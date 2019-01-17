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
    public partial class GTFPage : System.Web.UI.Page
    {
        string conString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                PopulateGridView();

            }
        }

        void PopulateGridView()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(conString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("Select * from GoogleMap",sqlCon);
                sqlDa.Fill(dtbl);
                GridView1.DataSource = dtbl;
                GridView1.DataBind();

            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            PopulateGridView();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(conString))
                {
                    sqlCon.Open();
                    String Querry = "UPDATE GoogleMap SET type= @type WHERE ID = @ID";
                    SqlCommand sqlCmd = new SqlCommand(Querry, sqlCon);

                    sqlCmd.Parameters.AddWithValue("@type", (GridView1.Rows[e.RowIndex].FindControl("txttype") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@ID", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    GridView1.EditIndex = -1;
                    PopulateGridView();


                }
            }
            catch (Exception ex)
            {

                Label1.Text = ex.Message;
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            PopulateGridView();
        }
    }
}