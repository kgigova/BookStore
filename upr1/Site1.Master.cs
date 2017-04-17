using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace upr1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PassForgotten_Click(object sender, EventArgs e)
        {
            PasswordRecovery chpass = (PasswordRecovery)LoginView1.FindControl("PasswordRecovery1");
            chpass.Visible = true;
        }

        protected void btnlinkChangePass_Click(object sender, EventArgs e)
        {
            ChangePassword chpass = (ChangePassword)LoginView1.FindControl("ChangePassword1");
            chpass.Visible = true;
        }

        protected void imgbtnBg_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "bg-BG";
            Response.Redirect(Request.Path); 
        }

        protected void imgbtnEn_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "en-US";
            Response.Redirect(Request.Path); 
        }
    }
}