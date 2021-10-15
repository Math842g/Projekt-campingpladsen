using Campingplads.Data;
using Newtonsoft.Json;
using Projekt.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekt
{
    public partial class _Default : Page
    {
        private ICollection<Item> items;

        public _Default()
        {
            items = new List<Item>();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (items.Count == 0)
            {
                using (DatabaseManager manager = new())
                {
                    manager.GetObjects<Item>().ForEach(item => items.Add(item));
                }
            }
        }

        protected void CalculateNewPrice(object sender, EventArgs e)
        {
            var arrivalDate = DateTime.Parse(ArrivalDate.Text);
            var departureDate = DateTime.Parse(DepartureDate.Text);
            var days = (departureDate - arrivalDate).TotalDays;

            var adults = Convert.ToInt32(adultCount.Text);
            var children = Convert.ToInt32(childCount.Text);
            var pets = Convert.ToInt32(petCount.Text);


            MinimumPrice.Text = "Yeet";
            QuickBookUpdatePanel.Update();
        }

        protected void BookButton_Click(object sender, EventArgs e)
        {

        }
    }
}