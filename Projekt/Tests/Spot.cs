using Campingplads.Tests;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projekt.Tests
{
    public class Spot
    {
        [Database("id")]
        public int SpotId { get; set; }
        [Database("spot_type")]
        public int SpotType{ get; set; }
        public Spot()
        {

        }
    }
}