using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projekt.BussinesLogic
{
    public class Customer
    {
        #region Attributes
        //Attributes for customers
        private string firstName;
        private string lastName;
        private string phone;
        private string country;
        private string city;
        private string zipCode;
        private string adress;
        private string email;
        private DateTime dateOfBirth;
        #endregion
        #region Properties
        //Getters and setteres for customers
        public DateTime DateOfBirth
        {
            get { return dateOfBirth; }
            set { dateOfBirth = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Adress
        {
            get { return adress; }
            set { adress = value; }
        }

        public string ZipCode
        {
            get { return zipCode; }
            set { zipCode = value; }
        }


        public string Country
        {
            get { return country; }
            set { country = value; }
        }


        public string City
        {
            get { return city; }
            set { city = value; }
        }

        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }


        public string LastName
        {
            get { return lastName; }
            set { lastName = value; }
        }


        public string FirstName
        {
            get { return firstName; }
            set { firstName = value; }
        }
        #endregion
    }
}