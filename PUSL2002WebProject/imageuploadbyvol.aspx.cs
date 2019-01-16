using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace PUSL2002WebProject
{
    public partial class imageuploadbyvol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                HyperLink1.Visible = false;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedfile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedfile.FileName);
            string fileextention = Path.GetExtension(postedfile.FileName);
            
            if (filename.ToLower()+= ".jpg"  ||  filename.ToLower() += ".png" || filename.ToLower() += ".bmp")
            {

            }
        }
    }
}