using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PUSL2002WebProject
{
    public partial class LogingFormForAll : System.Web.UI.Page
    {
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * From SignUp Where username='"+TextBoxUsername.Text+ "' AND Password='" + TextBoxPassword.Text + "'" , con);
            sda.SelectCommand = cmd;
            sda.Fill(ds, "SignUp");
            if(ds.Tables[0].Rows.Count>0)
            {
                Response.Redirect("http://localhost:3424/Home/Index");
                Server.Transfer("http://localhost:3424/Home/Index");
            }
            else
            {
                Label1.Text = "Wrong username or password";
            }
        }
    }
}