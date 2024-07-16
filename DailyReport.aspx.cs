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

public partial class DailyReport : System.Web.UI.Page
{ string strDesignation = string.Empty;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["LeaveId"] != null && Session["Edit"] != null)
            {

                //update
                FillUpdate();
            }
            else
            {
                Clear();
            }

        }
    }
    void Clear()
    {
rbtnPref_Language.Text="";
txtLeaveId.Text="";
DrpDay.Text="";
txtDutyIn.Text="";
txtDutyOut.Text="";
txtD_DD.Text="";
txtD_MM.Text="";
txtD_YY.Text="";
Drporg.Text="";
txtAbsent.Text="";
txtdho.Text="";
txtalloted.Text="";
txtMO.Text="";
txtMM.Text="";
txtSuggestion.Text="";
Drporg.Text="";
rbtnam.Text="";
rbtnpm.Text="";
    }

    protected void btnSubmit_Click1(object sender, EventArgs e)
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
               
               
                string strQry = "Declare @MasterId int" + System.Environment.NewLine;
                strQry += "INSERT INTO [Report]" + System.Environment.NewLine;
                strQry += "([Pref_Language],[LeaveId],[Day],[DutyIn]" + System.Environment.NewLine;
                strQry += ",[am],[DutyOut],[pm],[Date]" + System.Environment.NewLine;
                strQry += ",[Name],[D_des],[Dept],[org]" + System.Environment.NewLine;
                strQry += ",[Absent],[dho],[alloted],[MajorOberved]" + System.Environment.NewLine;
                strQry += ",[MajorRequirement],[Suggestion])" + System.Environment.NewLine;


                strQry += "Values('" + rbtnPref_Language.SelectedValue + "' ,'"+ txtLeaveId.Text.Trim().Replace("'", "''") + "','" + DrpDay.SelectedValue + "'," + System.Environment.NewLine;
                strQry += "'" + txtDutyIn.Text.Trim().Replace("'", "''") + "','" + rbtnam.SelectedValue + "', '" + txtDutyOut.Text.Trim().Replace("'", "''") + "','" + rbtnpm.SelectedValue + "' ," + System.Environment.NewLine;
                strQry += "'" + txtName.Text.Trim().Replace("'", "''") + "'," + System.Environment.NewLine;
                strQry += "'" + strD_DDMMYY + "','" + txtName.Text.Trim().Replace("'", "''") + "'," + System.Environment.NewLine;
                strQry += "'" + txtD_des.Text.Trim().Replace("'", "''") + "','" + rbtnDept.SelectedValue + "' ,'" + Drporg.SelectedValue + "' ,'" + txtAbsent.Text.Trim().Replace("'", "''") + "','" + txtdho.Text.Trim().Replace("'", "''") + "'," + System.Environment.NewLine;
                strQry += "'" + txtalloted.Text.Trim().Replace("'", "''") + "','" + txtMO.Text.Trim().Replace("'", "''") + "','" + txtMM.Text.Trim().Replace("'", "''") + "','" + txtSuggestion.Text.Trim().Replace("'", "''") + "')" + System.Environment.NewLine;
                 strQry += " set @MasterId=@@IDENTITY" + System.Environment.NewLine;
                 SqlHelp.ForExecuteNonQuery(strQry);
                 strQry = "SELECT @MasterId as MaxId";
                 DataTable dtID = SqlHelp.GetDataTable(strQry);
                 if (dtID.Rows.Count > 0)
                 {
                     Session["ID"] = dtID.Rows[0]["MaxId"].ToString();
                     Email.EmailToAdmin("DailyReport", Mail_Admin());
                     //Email.EmailToUser(Dpmail.Text, Mail_User(), "Online Ragistration : Hindi & English");

                     Clear();
                     Response.Redirect("index.aspx"); 
                 }
            }   
                  
                
            
            else if (btnSubmit.Text == "Update")
            {
               string strUpdate = string.Empty;
                string strDesignation = string.Empty;
                // string strThumbPath = string.Empty;
                string strD_DDMMYY = txtD_DD.Text.Trim().Replace("'", "''") + "/" + txtD_MM.Text.Trim().Replace("'", "''") + "/" + txtD_YY.Text.Trim().Replace("'", "''");
              
              
                strUpdate += "UPDATE [Report]" + System.Environment.NewLine;
              
                strUpdate += "SET [Pref_Language] = '" + rbtnPref_Language.SelectedValue + "'" + System.Environment.NewLine;
                strUpdate += " ,[LeaveId] = '" + txtLeaveId.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[Day] = '" + DrpDay.SelectedValue + "'" + System.Environment.NewLine;
                strUpdate += " ,[DutyIn] = '" + txtDutyIn.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[am] = '" + rbtnam.SelectedValue + "'" + System.Environment.NewLine;

                strUpdate += ",[DutyOut] = '" + txtDutyOut.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[pm] = '" + rbtnpm.SelectedValue + "'" + System.Environment.NewLine;
                strUpdate += " ,[Date] = '" + strD_DDMMYY + "'" + System.Environment.NewLine;
                
                strUpdate += " ,[Name] = '" + txtName.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[Designation] = '" + txtD_des.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[Department] = '" + rbtnDept.SelectedValue + "'" + System.Environment.NewLine;
                strUpdate += " ,[org] = '" + Drporg.SelectedValue + "'" + System.Environment.NewLine;
                strUpdate += " ,[Absent] = '" + txtAbsent.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[dho] = '" + txtdho.Text.Trim().Replace("'", "'") + "'" + System.Environment.NewLine;
                strUpdate += " ,[alloted] = '" + txtalloted.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[MajorObserved] = '" + txtMO.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[MajorRequirement] = '" + txtMM.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[AnySuggestion] = '" + txtSuggestion.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                
               
                
                strUpdate += "Where ReportId='" + Session["LeaveId"].ToString() + "'" + System.Environment.NewLine;
                if (SqlHelp.ForExecuteNonQuery(strUpdate) == true)
                {
                    btnSubmit.Text = "Update";
                    lblmsg.Text = "All detail succefully";
                    Response.Redirect("index.aspx");
                }
            }
        }
        catch (Exception ex)
        {
            throw (ex);


        }
    }

    protected void btnReset_Click1(object sender, EventArgs e)
    {
        Clear();
    }

    protected void FillUpdate()
    {
        try
        {

            DataTable dtUpdate = SqlHelp.GetDataTable("Select * from Report Where LeaveId='" + Session["LeaveId"].ToString() + "'");
            if (dtUpdate.Rows.Count > 0)
            {
                rbtnPref_Language.SelectedValue = dtUpdate.Rows[0]["Pref_Language"].ToString();
                txtLeaveId.Text = dtUpdate.Rows[0]["LeaveId"].ToString();
                DrpDay.SelectedValue = dtUpdate.Rows[0]["Day"].ToString();
                 txtDutyIn.Text = dtUpdate.Rows[0]["DutyIn"].ToString();
                 rbtnam.SelectedValue = dtUpdate.Rows[0]["am"].ToString();

                txtDutyOut.Text = dtUpdate.Rows[0]["DutyOut"].ToString();
                rbtnpm.SelectedValue = dtUpdate.Rows[0]["pm"].ToString();

                DateTime sadate = Convert.ToDateTime(dtUpdate.Rows[0]["CurrentDate"].ToString());
                txtD_DD.Text = sadate.Day.ToString();
                txtD_MM.Text = sadate.Month.ToString();
                txtD_YY.Text = sadate.Year.ToString();
                txtName.Text = dtUpdate.Rows[0]["Name"].ToString();
                txtD_des.Text = dtUpdate.Rows[0]["Designation"].ToString();
                rbtnDept.SelectedValue = dtUpdate.Rows[0]["Department"].ToString();
                txtAbsent.Text = dtUpdate.Rows[0]["Absent"].ToString();
                txtdho.Text = dtUpdate.Rows[0]["dho"].ToString();
                txtalloted.Text = dtUpdate.Rows[0]["alloted"].ToString();
                txtMO.Text = dtUpdate.Rows[0]["MajorObserved"].ToString();
                txtMM.Text = dtUpdate.Rows[0]["MajorRequirement"].ToString();
                txtSuggestion.Text = dtUpdate.Rows[0]["Suggestion"].ToString();
              
                btnSubmit.Text = "Update";
            }
        }
        catch (Exception ex)
        {
            throw (ex);

        }
    }
           
    /// <summary>
    /// Body css for Email to User
    /// </summary>
    /// <returns></returns>
//    protected string Mail_User()
//    {
//        try
//        {
//            string strBody = string.Empty;
//            strBody = @"<html><head></head>
//                        <style type='text/css'>
//                            .ibdr {
//	                                border: 1px dashed #999999;
//	                                background-color: #E9E9E9;
//                                }
//                                                            .toprk {
//                                font-family: Calibri;
//                                font-size: 28px;
//                                line-height: 30px;
//                                color: #FF8B00;
//                                text-decoration: none;
//                                font-weight: bold;
//                                }
//                                                            .title03 {
//	                                font-family: Calibri;
//	                                font-size: 20px;
//	                                line-height: 30px;
//	                                font-weight: bold;
//	                                color: #666666;
//	                                padding-bottom: 3px;
//	                                }
//                                                           .btn_01 {
//	                                font-family: Calibri;
//	                                font-size: 16px;
//	                                font-weight: normal;
//	                                color: #333333;
//	                                text-decoration: none;
//	                                line-height: 22px;
//	                                border-bottom-style: none;
//	                                text-transform: capitalize;
//                                }
//                                                            .btn_06 {
//	                                font-family: Calibri;
//	                                font-size: 15px;
//	                                font-weight: bold;
//	                                color: #333333;
//	                                text-decoration: none;
//	                                line-height: 25px;
//                                }
//                                .btn_02 {
//	                                font-family: Arial, Helvetica, sans-serif, Tahoma;
//	                                font-size: 13px;
//	                                font-weight: bold;
//	                                color: #FE8A00;
//	                                text-decoration: none;
//	                                line-height: 23px;
//	                                padding-bottom: 3px;
//                                }
//                            
//                            </style>
//                            <body>" + ThanksMessage() + @"</body></html>";
//            return strBody;


//        }
//        catch (Exception ex)
//        {
//            throw (ex);
//        }

//    }



    //Mail Message For User
    //protected string ThanksMessage()
    //{
    //    string strMsg = string.Empty;
    //    return strMsg;
    //}

    /// <summary>
    /// Email Function for Admin
    /// </summary>
    /// <returns></returns>
    protected string Mail_Admin()
    {
        try
        {
            string strMsg = string.Empty;
            strMsg += "<table cellpadding='0' cellspacing='0' width='500'>" + System.Environment.NewLine;
            strMsg += "<tr><td colspan='2'>&nbsp;</td> </tr>" + System.Environment.NewLine;
            strMsg += "<tr><td colspan='2' style='font-size: medium; font-weight: 700; font-family: Arial, Helvetica, sans-serif; color: #000000'>" + System.Environment.NewLine;
            strMsg += "&nbsp;&nbsp;&nbsp;Online Member Ragistration</td></tr>" + System.Environment.NewLine;
            strMsg += " <tr><td colspan='2'>&nbsp; </td></tr>" + System.Environment.NewLine;
            strMsg += "<tr><td colspan='2'>" + System.Environment.NewLine;
            strMsg += "<table width='500' border='0' align='center' cellpadding='4' cellspacing='1' bgcolor='#EEEEEE'style='font-family: Verdana; font-size: 12px'>" + System.Environment.NewLine;
            strMsg += "<tr><td height='28' align='center' class='title03'>" + System.Environment.NewLine;
            strMsg += "Congratulations ! You have been successfully submitted ." + System.Environment.NewLine;

            if (txtLeaveId.Text != "")
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;LeaveId :</td><td>" + txtLeaveId.Text + "</td></tr>" + System.Environment.NewLine;
            }
            if (txtDutyIn.Text != "")
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;DutyIn :</td><td>" + txtDutyIn.Text + "</td></tr>" + System.Environment.NewLine;
            }
            if (txtDutyOut.Text != "")
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;DutyOut :</td><td>" + txtDutyOut.Text + "</td></tr>" + System.Environment.NewLine;
            }
           
            //if (txtDutyOut.Text != "")
            //{
            //    strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;DOB :</td><td>" + Convert.ToDateTime(txtDOB.Text, enGB).ToString("dd-MMM-yyyy") + "</td></tr>" + System.Environment.NewLine;
            //}

            if (rbtnam.SelectedIndex != 0)
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Gender :</td><td>" + rbtnam.SelectedValue + "</td></tr>" + System.Environment.NewLine;
            }
            if (rbtnDept.SelectedIndex != 0)
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Latest Department :</td><td>" + rbtnDept.SelectedValue + "</td></tr>" + System.Environment.NewLine;
            }
            if (txtD_DD.Text != "")
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Date :</td><td>" + txtD_DD.Text + "</td></tr>" + System.Environment.NewLine;
            }
            if (txtD_MM.Text != "")
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Month :</td><td>" + txtD_MM.Text + "</td></tr>" + System.Environment.NewLine;
            }
           
              if (txtD_YY.Text != "")
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Year :</td><td>" + txtD_YY.Text + "</td></tr>" + System.Environment.NewLine;
            }
              if (txtName.Text != "")
 
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Name :</td><td>" + txtName.Text + "</td></tr>" + System.Environment.NewLine;
            }
            if (txtAbsent.Text != "")
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Absent:</td><td>" + txtAbsent.Text + "</td></tr>" + System.Environment.NewLine;
            }
            if (txtdho.Text != "")
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;DailyHours :</td><td>" + txtdho.Text + "</td></tr>" + System.Environment.NewLine;
            }
            if (txtalloted.Text != "")
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Alloted:</td><td>" + txtalloted.Text + "</td></tr>" + System.Environment.NewLine;
            }
            if (txtMO.Text != "")
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;MajorRequirement :</td><td>" + txtMO.Text + "</td></tr>" + System.Environment.NewLine;
            }
            if (txtMM.Text != "")
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;MajorMaterial :</td><td>" + txtMM.Text + "</td></tr>" + System.Environment.NewLine;
            }
            if (txtSuggestion.Text != "")
            {
                strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Suggestion :</td><td>" + txtSuggestion.Text + "</td></tr>" + System.Environment.NewLine;
            }
           
            strMsg += "</table> </td></tr></table>";
            return strMsg;
        }
        catch (Exception ex)
        {
            throw (ex);
        }
    }

  protected void btnBack_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~index.aspx");
  
    }
}

