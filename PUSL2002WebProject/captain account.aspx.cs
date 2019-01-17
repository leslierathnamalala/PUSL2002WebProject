using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PUSL2002WebProject
{
    public partial class captain_account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            String cs = ConfigurationManager.ConnectionStrings["GarbageConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select Description,ImageData from tblImages ", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                ListView1.DataSource = rdr;
                ListView1.DataBind();
            }
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}