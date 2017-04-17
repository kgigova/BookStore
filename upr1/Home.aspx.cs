using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace upr1
{
    public partial class WebForm1 : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                Label1.Text = "Здравейте, " + User.Identity.Name + "! Добре дошли в електронната книжарница!  Датата и часът са: " + DateTime.Now + " Вашият браузър е: " + Request.Browser.Browser;
            }
            else
            {
                Label1.Text = " ";
            }
        }
    }
}