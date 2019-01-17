using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PUSL2002WebProject
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-J3SS71C;Initial Catalog=Garbage;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select ImageData,Description from tblImages", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }
}