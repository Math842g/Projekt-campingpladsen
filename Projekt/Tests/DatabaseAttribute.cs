using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Campingplads.Tests
{
    [AttributeUsage(AttributeTargets.Property, Inherited = true, AllowMultiple = true)]
    sealed class DatabaseAttribute : Attribute
    {
        public string DbName { get; }
        public DatabaseAttribute(string databaseName)
        {
            DbName = databaseName;
        }
    }
}