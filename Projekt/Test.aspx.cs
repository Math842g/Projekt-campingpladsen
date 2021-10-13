using Campingplads.Tests;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Campingplads
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DatabaseManager manager = new DatabaseManager())
            {
                var customer = manager.GetObject<Customer>(new Dictionary<string, string>()
                {
                    { "id", "1" }
                });
                testLabel.Text = JsonConvert.SerializeObject(customer);
                customer.FirstName = "Yeet";
                manager.UpdateObject(customer);
                testLabel2.Text = JsonConvert.SerializeObject(customer);
            }
        }
    }
}