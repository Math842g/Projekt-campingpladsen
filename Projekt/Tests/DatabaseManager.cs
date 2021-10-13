using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Web;

namespace Campingplads.Tests
{
    public class DatabaseManager : IDisposable
    {
        private string ConnectionString = "Server=172.16.53.240;Database=Campingplads;User Id=Test;Password=Kode1234!;";

        public T GetObject<T>(Dictionary<string, string> identifiers) where T: new()
        {
            T obj = new();

            using (SqlConnection sqlConnection = new SqlConnection(ConnectionString))
            {
                string objectName = obj.GetType().Name;
                StringBuilder query = new StringBuilder();
                query.Append($"SELECT * FROM [{objectName}] WHERE ");

                int count = 0;
                foreach (var pair in identifiers)
                    query.Append($"[{pair.Key}] = '{pair.Value}' {(count++ != (identifiers.Count - 1) ? " AND " : "")}");

                SqlCommand command = new SqlCommand(query.ToString(), sqlConnection);
                try
                {
                    sqlConnection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        foreach (PropertyInfo propertyInfo in obj.GetType().GetProperties())
                        {
                            if (propertyInfo.CanWrite)
                            {
                                DatabaseAttribute databaseObject = (DatabaseAttribute)propertyInfo.GetCustomAttribute(typeof(DatabaseAttribute));
                                propertyInfo.SetValue(obj, reader[databaseObject.DbName]);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.ToString());
                }
            }
            return obj;
        }

        public void UpdateObject<T>(T _object)
        {
            using (SqlConnection connection = new(ConnectionString))
            {
                StringBuilder queryBuilder = new();
                queryBuilder.Append($"UPDATE [{_object.GetType().Name}] SET ");

                int id = 0;
                foreach (var propertyInfo in _object.GetType().GetProperties())
                {
                    if (propertyInfo.Name.Equals("ID"))
                    {
                        id = (int)propertyInfo.GetValue(_object);
                        continue;
                    }
                    DatabaseAttribute databaseObject = (DatabaseAttribute)propertyInfo.GetCustomAttribute(typeof(DatabaseAttribute));
                    queryBuilder.Append($"[{databaseObject.DbName}] = '{propertyInfo.GetValue(_object)}', ");
                }
                queryBuilder.Append($"WHERE [id] = '{id}'");
                string query = queryBuilder.ToString().Replace(", WHERE", " WHERE");

                SqlCommand command = new(query, connection);
                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                }
                catch(SqlException ex)
                {
                    Console.WriteLine(ex.ToString());
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        public void AddObject<T>(T _object)
        {
            StringBuilder query = new();

            using (SqlConnection connection = new(ConnectionString))
            {
                query.Append($"INSERT INTO [{_object.GetType().Name}]");

                SqlCommand command = new(query.ToString());
                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                }
                catch (SqlException ex)
                {

                }
                finally
                {
                    connection.Close();
                }
            }
        }

        public void Dispose()
        {
        }
    }
}