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
    public partial class StaffDetaiForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Staff values (@StaffID, @FirstName, @LastName, @Email,@DoB, @Gender, @Password)", con);
            cmd.Parameters.AddWithValue("StaffID", TextBox6.Text);
            cmd.Parameters.AddWithValue("FirstName", fnbox.Text);
            cmd.Parameters.AddWithValue("LastName", LnBox.Text);
            cmd.Parameters.AddWithValue("Email", EBox.Text);
            cmd.Parameters.AddWithValue("DoB", DobBox.Text);
            cmd.Parameters.AddWithValue("Gender", genBox.Text);
            cmd.Parameters.AddWithValue("Password", PW1Box.Text);

            cmd.ExecuteNonQuery();
            //Label2
            Label2.Visible = true;
            Label2.Text = "User registered successfully";

            TextBox6.Text = "";
            fnbox.Text = "";
            LnBox.Text = "";
            EBox.Text = "";
            DobBox.Text = "";
            genBox.Text = "";
            PW1Box.Text = "";
        }
    }
}