using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
namespace web_app1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                LinkButton1.Visible = true;
                loginLink.Visible = false;
            }
            else
            {
                loginLink.Visible = true;
                LinkButton1.Visible = false;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut(); 
            Response.Redirect("index.aspx");
        }
    }
}