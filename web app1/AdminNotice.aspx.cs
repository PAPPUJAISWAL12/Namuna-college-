using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.IO;
namespace web_app1
{
    public partial class AdminNotice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
        private long GetNoticeID()
        {
            SqlConnection con = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand com = new SqlCommand("", con);
            SqlDataReader rd;
            try
            {
                con.Open();
                com.CommandText = "Select max(newsid) from notice;";
                rd = com.ExecuteReader();
                rd.Read();
                if (rd[0] != null)
                    return Convert.ToInt64(rd[0]) + 1;
                else
                    return 1;
            }
            catch
            {

            }
            finally {
               if(con.State!=ConnectionState.Closed) con.Close();
            }
            return 0;
        }
        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            long nid = GetNoticeID();
            SqlDataSource1.InsertParameters["NewsID"].DefaultValue = nid.ToString();
            FileUpload f1 =(FileUpload) DetailsView1.FindControl("FileUpload1");
            if (f1.HasFile)
            {
                f1.PostedFile.SaveAs(Server.MapPath("~/images/")+nid.ToString()+Path.GetExtension(f1.FileName));
                SqlDataSource1.InsertParameters["ImagePath"].DefaultValue = "~/images/" + nid.ToString() + Path.GetExtension(f1.FileName);
            }

        }
    }
}