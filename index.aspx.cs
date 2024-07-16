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

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Lnkadmin.Focus();
        Lnkadmincpw.Focus();
        LnkRag.Focus();
        Lnkdar.Focus();
        lnkRecord.Focus();
        LnkLeave.Focus();
        Lnksan.Focus();
        Lnkuser.Focus();
        lnkupw.Focus();
        LnkRegview.Focus();
        lnkdrv.Focus();
        lnkrv.Focus();
        lnkLv.Focus();
        lnkLogout.Focus();
        lnkuhome.Focus();

        if (IsPostBack == true)
        {
        }

      //  if (Session["RegistrationId"] == null)
      //  {
          //  Response.Redirect("login.aspx", false);
      //  }
    }


    protected void Lnkadmin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminContact.aspx");
    }
    protected void Lnkadmincpw_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminContact.aspx");
    }
    protected void LnkRag_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminContact.aspx");
    }
    protected void Lnkdar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DailyReport.aspx");
    }
    protected void lnkRecord_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Record.aspx");
    }
    protected void LnkLeave_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Leave.aspx");
    }
    protected void Lnksan_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminContact.aspx");
    }
    protected void Lnkuser_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void lnkupw_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ChangePasswoprd.aspx");
    }
    protected void LnkRegview_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminContact.aspx");
    }
    protected void lnkdrv_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DailyContinue.aspx");
    }
    protected void lnkrv_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/RecordView.aspx");
    }
    protected void lnkLv_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminContact.aspx");
    }
    protected void lnkuhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Welcome.aspx");
    }
    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Logout.aspx");
    }
}
