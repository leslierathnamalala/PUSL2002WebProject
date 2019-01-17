using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PUSL2002WebProject
{
    public partial class Admin : System.Web.UI.Page
    {
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
    }
}