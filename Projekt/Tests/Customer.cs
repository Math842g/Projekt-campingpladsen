using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Campingplads.Tests
{
    public class Customer
    {
        [Database("id")]
        public int ID { get; set; }
        [Database("first_name")]
        public string FirstName { get; set; }
        [Database("last_name")]
        public string LastName { get; set; }
        public string FullName => string.Format($"{FirstName} {LastName}");
        [Database("phone")]
        public string PhoneNumber { get; set; }
        [Database("country")]
        public string Country { get; set; }
        [Database("city")]
        public string City { get; set; }
        [Database("zip_code")]
        public string ZipCode { get; set; }
        [Database("address")]
        public string Address { get; set; }
        [Database("email")]
        public string Email { get; set; }

        private DateTime _dateOfBirth;
        [Database("date_of_birth")]
        public DateTime DateOfBirth 
        { 
            get => _dateOfBirth.Date; 
            set => _dateOfBirth = value; 
        }

        public Customer()
        {
        }
    }
}