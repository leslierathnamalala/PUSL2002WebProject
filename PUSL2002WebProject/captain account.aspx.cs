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
            /*  SqlConnection con = new SqlConnection("Data Source=DESKTOP-J3SS71C;Initial Catalog=Garbage;Integrated Security=True");
              SqlDataAdapter sda = new SqlDataAdapter("Select Description,ImageData from tblImages ",con);
              DataTable dt = new DataTable();
              sda.Fill(dt);
              ListView1.DataSource = dt;
              ListView1.DataBind();*/
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
            

       
    }
}