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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {  txtUserName.Text = "";
            txtPassword.Text = "";
            txtPassword.Attributes.Add("onKeyPress", "javascript:if (event.keyCode == 13) __doPostBack('" + btnLogin.UniqueID + "','')");
        }
    }
        
    
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        DataTable dtLoginCheck = SqlHelp.GetDataTable("Select * from Registration Where Email='" + txtUserName.Text.Trim().Replace("'", "''") + "' and password='" + txtPassword.Text.Trim().Replace("'", "''") + "'");
        if (dtLoginCheck.Rows.Count > 0)
        {
            Session["ID"] = dtLoginCheck.Rows[0]["RagistrationID"].ToString();

            Response.Redirect("Welcome.aspx", false);
        }
         else
            {
                lblMsg.Text = "Invalid User Name or Password";
                txtUserName.Text = "";
                txtPassword.Text = "";               
            }
    }
       
    
    }

