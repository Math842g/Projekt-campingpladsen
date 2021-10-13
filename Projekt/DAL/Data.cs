using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Entity;
using Projekt.BussinesLogic;

namespace Projekt.Classes
{
    public class Data
    {
        #region Fields
        //Connection to database
        SqlConnection con = new SqlConnection("Server=172.16.53.240;Database=Campingplads;User Id=views;Password=Kode1234!;");
        #endregion
        Customer c = new Customer();
        #region Methods
        /*
        public void InsertCustomer()
        {
            //Defines which SQL command to use
            SqlCommand cmd = new SqlCommand("sp_insert_customer", con);
            //Sets all parameters in a oneline (AddWithValue) instead of manual creating each parameter
            cmd.Parameters.AddWithValue("@first_name", c.FirstName);
            cmd.Parameters.AddWithValue("@last_name", c.LastName);
            cmd.Parameters.AddWithValue("@phone", c.Phone);
            cmd.Parameters.AddWithValue("@country", c.Country);
            cmd.Parameters.AddWithValue("@city", c.City);
            cmd.Parameters.AddWithValue("@zip_code", c.ZipCode);
            cmd.Parameters.AddWithValue("@adress", c.Adress);
            cmd.Parameters.AddWithValue("@email", c.Email);
            cmd.Parameters.AddWithValue("@date_of_birth", c.DateOfBirth);
            //Adding the OUTPUT variable
            cmd.Parameters.Add("@ReturnID", System.Data.SqlDbType.Int);
            cmd.Parameters["@ReturnID"].Direction = System.Data.ParameterDirection.Output;
            //Defines which type of SQL to use.
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            con.Open();

            //Catches errors
            try
            {
                //Executing a NON Query since it's an INSERT query
                cmd.ExecuteNonQuery();
                //Setting a label equals the OUTPUT parameter
                lblReturn.Text = "Kunden oprettet med ID: " + Convert.ToString(cmd.Parameters["@ReturnID"].Value);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                //Binds the data to a gridview
                con.Close();
            }
        }
        public Price ReadPrice()
        {

        }
        */
        #endregion
    }
}