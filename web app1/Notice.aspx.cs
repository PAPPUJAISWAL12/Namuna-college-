using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_app1
{
    public partial class Notice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Buttonshow_Click(object sender, EventArgs e)
        {
            LinkButton btndetails = sender as LinkButton;
            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;
            Label1.Text = gvrow.Cells[2].Text;
            Label2.Text = gvrow.Cells[1].Text;
            Image1.ImageUrl = ResolveUrl(gvrow.Cells[3].Text);
            this.DataBind();
            ModalPopupExtender1.Show();
        }
    }
}