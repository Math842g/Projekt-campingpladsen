using Campingplads.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projekt.Data
{
    public class Spot
    {
        [Database("id")]
        public int SpotId { get; set; }
        [Database("type")]
        public int SpotType{ get; set; }
        [Database("map_point_x")]
        public float MapPointX { get; set; }
        [Database("map_point_y")]
        public float MapPointY { get; set; }
        public Spot()
        {

        }
    }
}