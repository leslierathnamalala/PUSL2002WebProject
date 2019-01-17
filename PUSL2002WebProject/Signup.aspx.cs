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
    public partial class Signup : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into SignUP" + "(Username,Email,Password,Confirm_Password)values(@Username,@Email,@Password,@Confirm_Password)", con);
            cmd.Parameters.AddWithValue("@Username", TextBoxUN.Text);
            cmd.Parameters.AddWithValue("@Email", TextBoxEM.Text);
            cmd.Parameters.AddWithValue("@Password", TextBoxPW.Text);
            cmd.Parameters.AddWithValue("@Confirm_Password", TextBoxCP.Text);
            cmd.ExecuteNonQuery();
          


        }
      
    }
}