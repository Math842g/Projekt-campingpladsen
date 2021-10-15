using Campingplads.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projekt.Data
{
    public class Item
    {
        [Database("id")]
        public int ID { get; set; }
        [Database("type")]
        public int ItemType { get; set; }
        [Database("name")]
        public string ItemName { get; set; }
        [Database("price")]
        public int ItemPrice { get; set; }
        public Item()
        {

        }
    }
}