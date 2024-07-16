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

public partial class Leave : System.Web.UI.Page
{
    string Designation = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

           // if (Session["RegistrationId"] == null)
        //  {
        //  Response.Redirect("login.aspx", false);
        //  }
    }

        } 
    void Clear()
    {
        txtLeaveId.Text = "";
        txtD_DD.Text = "";
        txtD_MM.Text = "";
        txtD_YY.Text = "";
        txtF_DD.Text = "";
        txtF_MM.Text = "";
        txtF_YY.Text = "";
        txtT_DD.Text = "";
        txtT_MM.Text = "";
        txtT_YY.Text = "";
        txtD_des.Text = "";
        txtName.Text = "";
        rbtnDept.Text = "";
        txtReason.Text = "";
        Drpcharge.Text = "";
        Drporg.Text = "";


    }


    protected void btnBack_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (btnSubmit.Text == "Submit")
            {
                //Int64 rolln = 0;
                //DataTable dttotalrow = SqlHelp.GetDataTable("select * from ragistration");
                //if (dttotalrow.Rows.Count > 0)
                //{
                //    Int64 totalrow = 0;
                //    for (int i = 0; i < dttotalrow.Rows.Count; i++)
                //    {
                //        totalrow = totalrow + 1;
                //    }
                //    rolln = 400000 + totalrow;
                //}
                //else
                //{
                //    rolln = 400000;
                //}


                string strDesignation = string.Empty;
                string strD_DDMMYY = txtD_DD.Text.Trim().Replace("'", "''") + "/" + txtD_MM.Text.Trim().Replace("'", "''") + "/" + txtD_YY.Text.Trim().Replace("'", "''");
                string strF_DDMMYY = txtF_DD.Text.Trim().Replace("'", "''") + "/" + txtF_MM.Text.Trim().Replace("'", "''") + "/" + txtF_YY.Text.Trim().Replace("'", "''");
                string strT_DDMMYY = txtT_DD.Text.Trim().Replace("'", "''") + "/" + txtT_MM.Text.Trim().Replace("'", "''") + "/" + txtT_YY.Text.Trim().Replace("'", "''");
                //string strQry = "Insert Leave(LeaveId,Pref_Language,From#,Date,To#,Name,Designation,Department,charge,orgReason)values('" + rbtnPref_Language.SelectedValue + "','" + txtLeaveId.Text + "', '" + strF_DDMMYY + "','" + strD_DDMMYY + "','" + strT_DDmmyy + "','" + txtName.Text + "','" + txtD_des.Text + "','" + rbtnDept.SelectedValue + "')";


                string strQry = "Declare @MasterId int" + System.Environment.NewLine;
                strQry += "INSERT INTO [Leave]" + System.Environment.NewLine;
                strQry += " ([Pref_Language],[LeaveId],[From],[Date]" + System.Environment.NewLine;
                strQry += ",[To],[Name],[Designation],,[Department],[ charge]" + System.Environment.NewLine;
                strQry += ",[org],[Reason])" + System.Environment.NewLine;
                strQry += "Values('" + rbtnPref_Language.SelectedValue + "','" + txtLeaveId.Text.Trim().Replace("'", "''") + "'," + System.Environment.NewLine;
                strQry += "'" + strF_DDMMYY + "','" + strD_DDMMYY + "','" + strT_DDMMYY + "'," + System.Environment.NewLine;
                strQry += "'" + txtName.Text.Trim().Replace("'", "''") + "','" + txtD_des.Text.Trim().Replace("'", "''") + "','" + rbtnDept.SelectedValue + "'," + System.Environment.NewLine;

                strQry += "'" + Drpcharge.SelectedValue + "','" + Drporg.SelectedValue + "','" + txtReason.Text.Trim().Replace("'", "''") + "')" + System.Environment.NewLine;
                if (SqlHelp.ForExecuteNonQuery(strQry))
                {
                    btnSubmit.Text = "Submit Succefully";
                    Response.Redirect("~/LeaveView.aspx");
                }


                else
                {
                    lblmsg.Text = "Submit unsuccefully";
                    lblmsg.Visible = true;

                }
            }
        }
  catch (Exception ex)

        {
            throw (ex);
        }
    }
}