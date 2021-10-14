using Campingplads.Tests;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projekt.Tests
{
    public class Order
    {
        [Database("id")]
        public int OrderId { get; set; }
        [Database("customer_id")]
        public int CustomerId { get; set; }
        [Database("item_id")]
        public int ItemId { get; set; }
        [Database("spot_id")]
        public int SpotId { get; set; }
        [Database("placement_date")]
        public string PlacementDate { get; set; }
        [Database("payment_date")]
        public string PaymentDate { get; set; }
        [Database("duration_start")]
        public string DurationStart { get; set; }
        [Database("duration_end")]
        public string DurationEnd { get; set; }
        [Database("comment")]
        public string Comment { get; set; }
        public Order()
        {

        }

    }
}