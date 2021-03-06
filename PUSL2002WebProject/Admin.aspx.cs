﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace PUSL2002WebProject
{
    public partial class Admin : System.Web.UI.Page
    {
        private object body;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CaptainDetails2.aspx");
            //or
            Server.Transfer("CaptainDetails2.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //StaffDetaiForm.aspx

            Response.Redirect("StaffDetaiForm.aspx");
            //or
            Server.Transfer("StaffDetaiForm.aspx");

        }
        /*
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
                    
    }*/

        protected void Button3_Click(object sender, EventArgs e)
        {
            FileInfo fi = new FileInfo(FileUpload1.FileName);
            byte[] DocumentContent = FileUpload1.FileBytes;
            string name = fi.Name;
            string exten = fi.Extension;



            string cs = ConfigurationManager.ConnectionStrings["GarbageConnectionStringforNews"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("newsUpload", con);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value=TextBox1.Text;

                


                cmd.Parameters.Add("@Body", SqlDbType.VarChar).Value = TextBox2.Text;





                cmd.Parameters.Add("@DocumentContent", SqlDbType.VarBinary).Value = DocumentContent;
                cmd.Parameters.Add("@Datex", SqlDbType.VarChar).Value = TextBox3.Text;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                // string cs = ConfigurationManager.ConnectionStrings["GarbageConnectionString"].ConnectionString;

            }
        }
    }
}