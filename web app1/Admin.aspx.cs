using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
namespace web_app1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand com = new SqlCommand("Select UserName,Password From UserList",con);
            SqlDataReader rd;
            try
            {
                con.Open();
                rd = com.ExecuteReader();
                while (rd.Read())
                {
                    if (rd[0].ToString().ToUpper().Equals(userid.Value.ToUpper()) && rd[1].ToString().Equals(pwd.Value.ToString()))
                    {
                        FormsAuthentication.RedirectFromLoginPage("Admin", chkRemember.Checked);
                        return;
                    }
                }
                con.Close();
                Label1.Text = "Login failed. Please, try again!";
            }
            catch {
                Label1.Text = "Error during login.";
            }
        }
    }
}