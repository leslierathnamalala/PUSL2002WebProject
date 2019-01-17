using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PUSL2002WebProject
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string Connect()
        {

            string markers = "[";
            string conString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlCommand cmd = new SqlCommand("SELECT * FROM GoogleMap");
            using (SqlConnection con = new SqlConnection(conString))
            {
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        markers += "{";
                        markers += string.Format("'title': '{0}',", sdr["CityName"]);
                        markers += string.Format("'lat': '{0}',", sdr["Latitude"]);
                        markers += string.Format("'lng': '{0}',", sdr["Longitude"]);
                        markers += string.Format("'description': '{0}'", sdr["Description"]);
                        markers += "},";
                    }
                }
                con.Close();
            }

            markers += "];";

            return markers;
        }
    }
}