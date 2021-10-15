using Campingplads.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projekt.Data
{
    public class OrderItem
    {
        [Database("order_id")]
        public int OrderID { get; set; }
        [Database("item_id")]
        public int ItemID { get; set; }
        [Database("count")]
        public int Count { get; set; }
        public OrderItem()
        {

        }
    }
}