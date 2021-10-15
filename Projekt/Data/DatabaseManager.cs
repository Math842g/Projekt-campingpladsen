using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Web;

namespace Campingplads.Data
{
    public class DatabaseManager : IDisposable
    {
        private readonly string ConnectionString = "Server=172.16.53.240;Database=Campingplads;User Id=Test;Password=Kode1234!;";

        /// <summary>
        /// Retrieves first object from the database based on the object type
        /// Heavily relies on DatabaseAttribute to both be present and correctly setup to match the database columns
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="identifiers"></param>
        /// <returns></returns>
        public T GetObject<T>(Dictionary<string, string> identifiers) where T : new()
        {
            T obj = new();

            using (SqlConnection sqlConnection = new(ConnectionString))
            {
                string objectName = obj.GetType().Name;
                StringBuilder query = new();
                query.Append($"SELECT * FROM [{objectName}] WHERE ");

                int count = 0;
                foreach (var pair in identifiers)
                    query.Append($"[{pair.Key}] = '{pair.Value}' {(count++ != (identifiers.Count - 1) ? " AND " : "")}");

                SqlCommand command = new(query.ToString(), sqlConnection);
                try
                {
                    sqlConnection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
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

        public List<T> GetObjectsWhere<T>(Dictionary<string, string> conditions) where T: new() => GetObjects<T>(conditions);
        public List<T> GetObjectsWhereNot<T>(Dictionary<string, string> conditions) where T: new() => GetObjects<T>(conditions, true);

        public List<T> GetObjects<T>(Dictionary<string, string> conditions = null, bool reverse = false) where T: new()
        {
            List<T> _objects = new();
            T obj = new(); // placeholder

            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                string objectName = obj.GetType().Name;
                string query = $"SELECT * FROM [{objectName}]";

                SqlCommand command = new(query.ToString(), connection);
                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        obj = new();
                        foreach (PropertyInfo propertyInfo in obj.GetType().GetProperties())
                        {
                            if (propertyInfo.CanWrite)
                            {
                                DatabaseAttribute databaseObject = (DatabaseAttribute)propertyInfo.GetCustomAttribute(typeof(DatabaseAttribute));
                                propertyInfo.SetValue(obj, reader[databaseObject.DbName]);
                            }
                        }
                        _objects.Add(obj);
                    }
                }
                catch (SqlException ex)
                {

                }
                finally
                {
                    connection.Close();
                }
            }

            return _objects;
        }


        public void UpdateObject<T>(T _object, string identifier = "id")
        {
            using (SqlConnection connection = new(ConnectionString))
            {
                StringBuilder queryBuilder = new();
                queryBuilder.Append($"UPDATE [{_object.GetType().Name}] SET ");

                string identity = "";
                foreach (var propertyInfo in _object.GetType().GetProperties())
                {
                    if (propertyInfo.Name.Equals("ID")) // TODO: Change to work with different identifiers
                    {
                        identity += propertyInfo.GetValue(_object);
                        continue;
                    }
                    DatabaseAttribute databaseObject = (DatabaseAttribute)propertyInfo.GetCustomAttribute(typeof(DatabaseAttribute));
                    if (databaseObject != null)
                        if (propertyInfo.PropertyType == typeof(DateTime))
                            queryBuilder.Append($"[{databaseObject.DbName}] = '{propertyInfo.GetValue(_object).ToString().Replace(' ', 'T')}', ");
                        else
                            queryBuilder.Append($"[{databaseObject.DbName}] = '{propertyInfo.GetValue(_object)}', ");
                }
                queryBuilder.Append($"WHERE [{identifier}] = '{identity}'");
                string query = queryBuilder.ToString().Replace(", WHERE", " WHERE");

                SqlCommand command = new(query, connection);
                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                }
                catch (SqlException ex)
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
            using (SqlConnection connection = new(ConnectionString))
            {
                using (SqlCommand command = new($"insert_{_object.GetType().Name.ToLower()}", connection)
                {
                    CommandType = CommandType.StoredProcedure
                })
                {
                    foreach (var propertyInfo in _object.GetType().GetProperties())
                    {
                        if (propertyInfo.CanRead)
                        {
                            if (propertyInfo.Name.Equals("ID"))
                                continue;
                            if (propertyInfo.GetCustomAttribute(typeof(DatabaseAttribute)) != null)
                                command.Parameters.AddWithValue($"@{propertyInfo.Name}", propertyInfo.GetValue(_object));
                        }
                    }

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        Console.WriteLine(ex);
                    }
                    finally
                    {
                        connection.Close();
                    }
                }
            }
        }

        public void Dispose()
        {
        }
    }
}