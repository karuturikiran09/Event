using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class ChangePasswoprd : System.Web.UI.Page
{
  
protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["RagistrationID"] == null)
        {
            Response.Redirect("login.aspx", false);
        }

        lblMsg.Text = "";
        if (!IsPostBack)
        {

            tbconfirmnewpass.Text = "";
            tbnewpass.Text = "";
            tboldpass.Text = "";

        }
    }

    protected void Ibtn_Update_Click(object sender, EventArgs e)
    {
 
        if (tbconfirmnewpass.Text != "" || tbnewpass.Text != "" || tboldpass.Text != "")
        {
            DataTable dtCheck = SqlHelp.GetDataTable("select * from user where RagistrationID='" + Session["RagistrationID"].ToString() + "' and password='" + tboldpass.Text + "'");
            if (dtCheck.Rows.Count > 0)
            {
                if (SqlHelp.ForExecuteNonQuery("Update user set Password='" + tbnewpass.Text + "' where RagistrationID='" + Session["RagistrationID"].ToString() + "' and password='" + tboldpass.Text + "'"))
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "user Password Changed Successfully !";
                    lblMsg.ForeColor = System.Drawing.Color.Green;
                }
              
            }
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Old Password dosn't match !";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }

        }
        else
        {
            lblMsg.Text = "Please Fill Password Details!";
        }
    }
    protected void Ibtn_Update_Click1(object sender, EventArgs e)
    {

    }
}

