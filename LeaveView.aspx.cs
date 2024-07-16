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

public partial class LeaveView : System.Web.UI.Page
{
    
    
 protected void Page_Load(object sender, EventArgs e)
    
     {
        Btnadd.Focus();
        if (IsPostBack == true)
        {
        }

       // if (Session["AdminID"] == null)
       // {
         //   Response.Redirect("index.aspx", false);
       // }
        //if (!IsPostBack)
      //  {
           // Fill();
      //  }
    }
    protected void Fill()
    {
        // DataTable dt = uc.SelUser();
        // gvRecord.DataSource=dt;
        // gvRecord.DataBind();
        // gvRecord.Visible = true;


        
          //  lbnExport.Visible = true;
          //  string strQry = @"SELECT     '../images/' + CAST(SRegistration.IsActive AS varchar) + '.JPG' AS Status,Name ,Email,CONVERT(VARCHAR(11), Dob, 106)AS Dob, Address1 
    //as CompleteAddress , Country,
     //  dbo.SRegistration.*
  //  FROM         SRegistration  Order by  dbo.SRegistration.RegistrationId desc";
            //DataTable dt = SqlHelp.GetDataTable(strQry);
          //  if (dt.Rows.Count > 0)
           // {
               // gvRecord.DataSource = dt;
               // gvRecord.DataBind();

               // gvExport.DataSource = dt;
                //gvExport.DataBind();

           // }
          //  else
           // {
               //// gvRecord.DataSource = dt;
               // gvRecord.DataBind();
                //gvExport.DataSource = dt;
                //gvExport.DataBind();
                //lbnExport.Visible = false;
            //}
        }
    
    protected void gvRecord_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            //DataTable dtCheck = SqlHelp.GetDataTable("select * from SRegistration Where RegistrationId='" + e.CommandArgument.ToString() + "'");
            // if (dtCheck.Rows.Count > 0)
            // {
            //     ScriptManager.RegisterStartupScript(this, this.GetType(), "", "javascript:alert('You can not delete this user because some order(s) associated with this user!');", true);
            //     return;

            // }
            // else
            // {
            string strQry = "delete From Leave Where LeaveId='" + e.CommandArgument.ToString() + "'";
            SqlHelp.ForExecuteNonQuery(strQry);
            Fill();
            // }

        }
        else if (e.CommandName == "Status")
        {
            string qry = string.Empty;
            qry += " Declare @s as bit";
            qry += " select @s= isnull(cast(IsActive as bit),0) from Leave Where LeaveId='" + e.CommandArgument.ToString().Trim() + "'";
            qry += " IF @s=1";
            qry += " BEGIN";
            qry += " Set @s=0";
            qry += " End";
            qry += " Else";
            qry += " Begin ";
            qry += " Set @s=1";
            qry += " End";
            qry += " Update Leave set IsActive=@s where LeaveId='" + e.CommandArgument.ToString().Trim() + "'";
            SqlHelp.ForExecuteNonQuery(qry);
            Fill();
        }
    }
    protected void gvRecord_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }

    protected void gvRecord_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvRecord.PageIndex = e.NewPageIndex;
        Fill();
    }
    //protected void lbnExport_Click(object sender, EventArgs e)
    //{
    //  try
    // {
    // gvExport.Visible = true;
    // string attachment = "attachment; filename=StudentInformation.xls";
    // Response.ClearContent();
    // Response.AddHeader("content-disposition", attachment);
    // Response.ContentType = "application/ms-excel";
    // System.IO.StringWriter sw = new System.IO.StringWriter();
    // HtmlTextWriter htw = new HtmlTextWriter(sw);
    // HtmlForm frm = new System.Web.UI.HtmlControls.HtmlForm();
    // HtmlHead head = new System.Web.UI.HtmlControls.HtmlHead();

    //  frm.Controls.Add(gvExport);
    // gvExport.RenderControl(htw);
    // Response.Write(sw.ToString());
    //// Response.End();
    // gvExport.Visible = false;
    //  }
    //catch (Exception ex)
    // {
    // ex.Message.ToString();
    // }
    //}
    protected void gvRecord_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowState == DataControlRowState.Alternate)
            {
                e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#FFFFE1';");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#E5E5E5';");
            }
            else
            {
                e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#FFFFE1';");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#D6D6D6';");
            }
        }
    }
    protected void gvRecord_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    protected void Btnsearch_Click1(object sender, EventArgs e)
    {

             txtName.Text = string.Empty;
             gvRecord.Visible = true;
             lblMsg.Visible = true;
             lblMsg.Text = "Search Successfully !";
             lblMsg.ForeColor = System.Drawing.Color.Green;

        
        
       
            lblMsg.Text = "Record is not Found!";
        
    }
//private void Fill()
//{
   // throw new NotImplementedException();
//}
protected void Btnadd_Click1(object sender, EventArgs e)
{
    Response.Redirect("~/Leave.aspx");
}
}

    
