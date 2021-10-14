using Campingplads.Tests;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projekt.Tests
{
    public class Item
    {
        [Database("id")]
        public int ID { get; set; }
        [Database("item_type")]
        public int ItemType { get; set; }
        [Database("item_name")]
        public string ItemName { get; set; }
        [Database("item_price")]
        public decimal ItemPrice { get; set; }
        public Item()
        {

        }
    }
}