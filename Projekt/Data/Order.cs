using Campingplads.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projekt.Data
{
    public class Order
    {
        [Database("id")]
        public int OrderId { get; set; }
        [Database("customer_id")]
        public int CustomerId { get; set; }
        [Database("spot_id")]
        public int SpotId { get; set; }
        [Database("placement_date")]
        public DateTime PlacementDate { get; set; }
        [Database("payment_date")]
        public DateTime PaymentDate { get; set; }
        [Database("duration_start")]
        public DateTime DurationStart { get; set; }
        [Database("duration_end")]
        public DateTime DurationEnd { get; set; }
        [Database("comment")]
        public string Comment { get; set; }
        public Order()
        {

        }

    }
}