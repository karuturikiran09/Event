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

public partial class Record : System.Web.UI.Page
{
    string Designation = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["RecordId"] != null && Session["Edit"] != null)
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
       
txtD_DD.Text = "";
txtD_MM.Text = "";
txtD_YY.Text = "";
txtContactPerson.Text = "";
txtDesignation.Text = "";
txtBranch.Text = "";
txtSector1.Text = "";
txtSector2.Text = "";
txtLandlineNo0.Text = "";
txtLandlineNo1.Text = "";
txtMobileNo0.Text = "";
txtMobileNo1.Text = "";
txtMobileNo2.Text = "";
txtFaxNo.Text = "";
txtAddress.Text = "";
txtCity.Text = "";
txtState.Text = "";
txtEmailId.Text = "";
txtWebsite.Text = "";
txtRemark1.Text = "";
txtRemark2.Text = "";
txtRemark3.Text = "";
txtCname.Text = "";
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



                //DataTable dtGet = SqlHelp.GetDataTable(strQry);


                string Designation = string.Empty;
                string strD_DDMMYY = txtD_DD.Text.Trim().Replace("'", "''") + "/" + txtD_MM.Text.Trim().Replace("'", "''") + "/" + txtD_YY.Text.Trim().Replace("'", "''");

                string strQry = "Declare @MasterId int" + System.Environment.NewLine;
                strQry += "INSERT INTO [Record]" + System.Environment.NewLine;
                strQry += " ([rbtnPref_Language],[RecordId],[Date],[Cname]" + System.Environment.NewLine;
                strQry += ",[Branch],[ContactPerson],[Designation],[Sector1]" + System.Environment.NewLine;
                strQry += ",[Sector2],[LandLineNo0 ],[LandLineNo1 ],[MobileNo0]" + System.Environment.NewLine;
                strQry += ",[MobileNo1],[MobileNo2],[FaxNo],[Address]" + System.Environment.NewLine;
                strQry += ",[City],[State],[EmailId],[Website]," + System.Environment.NewLine;
                strQry += " ,[Remark1],[Remark2],[Remark3])" + System.Environment.NewLine;
                strQry += "Values('" + rbtnPref_Language.SelectedValue + "','" + txtRecordId.Text.Trim().Replace("'", "''") + "','" + strD_DDMMYY + "', + ," + System.Environment.NewLine;
                strQry += "'" + txtCname.Text.Trim().Replace("'", "''") + "','" + txtBranch.Text.Trim().Replace("'", "''") + "','" + txtContactPerson.Text.Trim().Replace("'", "''") + "'," + System.Environment.NewLine;
                strQry += "'" + txtDesignation.Text.Trim().Replace("'", "''") + "','" + txtSector1.Text.Trim().Replace("'", "''") + "'," + System.Environment.NewLine;
                strQry += "'" + txtSector2.Text.Trim().Replace("'", "''") + "','" + txtLandlineNo0.Text.Trim().Replace("'", "''") + "'," + System.Environment.NewLine;
                strQry += "'" + txtLandlineNo1.Text.Trim().Replace("'", "''") + "','" + txtMobileNo0.Text.Trim().Replace("'", "''") + "','" + txtMobileNo1.Text.Trim().Replace("'", "''") + "'," + System.Environment.NewLine;
                strQry += "'" + txtFaxNo.Text.Trim().Replace("'", "''") + "','" + txtAddress.Text.Trim().Replace("'", "''") + "'," + System.Environment.NewLine;
                strQry += "'" + txtCity.Text.Trim().Replace("'", "''") + "','" + txtState.Text.Trim().Replace("'", "''") + "'," + System.Environment.NewLine;
                strQry += "'" + txtEmailId.Text.Trim().Replace("'", "''") + "','" + txtWebsite.Text.Trim().Replace("'", "''") + "'," + System.Environment.NewLine;
                strQry += "'" + txtRemark1.Text.Trim().Replace("'", "''") + "','" + txtRemark2.Text.Trim().Replace("'", "''") + "','" + txtRemark3.Text.Trim().Replace("'", "''") + "')" + System.Environment.NewLine;
                
                if (SqlHelp.ForExecuteNonQuery(strQry) == true)
                {
                    btnSubmit.Text = "Submit Succefully";
                    Response.Redirect("~/RecordView.aspx");
                }


                else
                {
                    lblmsg.Text = "Submit unsuccefully";
                    lblmsg.Visible = true;

                }

            }

            else if (btnSubmit.Text == "Update")
            {
                string strUpdate = string.Empty;
                string strDesignation = string.Empty;
                // string strThumbPath = string.Empty;
                string strD_DDMMYY = txtD_DD.Text.Trim().Replace("'", "''") + "/" + txtD_MM.Text.Trim().Replace("'", "''") + "/" + txtD_YY.Text.Trim().Replace("'", "''");
                // string strDDMMYY = txtDD.Text.Trim().Replace("'", "''") + "/" + txtMM.Text.Trim().Replace("'", "''") + "/" + txtYY.Text.Trim().Replace("'", "''");
                // string strDDDMMMYYY = txtDDD.Text.Trim().Replace("'", "''") + "/" + txtMMM.Text.Trim().Replace("'", "''") + "/" + txtYYY.Text.Trim().Replace("'", "''");

                // if (fpPhotoName.HasFile == true)
                // {
                //  string strName = SqlHelp.GetSingleValue("Select RTRIM(LTRIM([PhotoName])) from Ragistration where RagistrationId='" + Session["ID"].ToString() + "'").ToString().Trim();
                //  System.IO.File.Delete(Server.MapPath(".") + "/resume//" + strName);
                //  System.IO.File.Delete(Server.MapPath(".") + "//resume/" + strName);
                //  Stream strm = fpPhotoName.PostedFile.InputStream;
                // extensions = System.IO.Path.GetExtension(fpPhotoName.FileName.ToString().Trim());
                // fileName = rand.Next(1000, 10000).ToString().Trim() + "_" + txtSector1.Text.Trim().Replace("'", "''") + extensions;
                // pth = Server.MapPath(".") + "//resume//" + fileName.ToString().Trim();
                //strThumbPath = Server.MapPath(".") + "//resume//" + fileName.ToString().Trim();
                // fpPhotoName.SaveAs(pth);




                strUpdate += "UPDATE [Record]" + System.Environment.NewLine;
                strUpdate += "SET [Pref_Language] = '" + rbtnPref_Language.SelectedValue + "'" + System.Environment.NewLine;
                strUpdate += " ,[RecordId] = '" + txtRecordId.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[Cname] = '" + txtCname.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[Branch] = '" + txtBranch.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
              
                strUpdate += " ,[ContactPerson] = '" + txtContactPerson.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += ",[Date] = '" + strD_DDMMYY + "'" + System.Environment.NewLine;
                strUpdate += ",[Designation] = '" + txtDesignation.ToString() + "'" + System.Environment.NewLine;
                strUpdate += " ,[Sector1] = '" + txtSector1.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;

                strUpdate += " ,[Sector2] = '" + txtSector2.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[LandlineNo0] = '" + txtLandlineNo0.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[LandlineNo1] = '" + txtLandlineNo1.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[MobileNo0] = '" + txtMobileNo0.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[MobileNo1] = '" + txtMobileNo1.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[MobileNo2] = '" + txtMobileNo2.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                
                strUpdate += ",[FaxNo] = '" + txtFaxNo.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;

                strUpdate += " ,[Address] = '" + txtAddress.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[City] = '" + txtCity.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[State] = '" + txtState.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += " ,[EmailId] = '" + txtEmailId.Text.Trim().Replace("'", "'") + "'" + System.Environment.NewLine;
                
                strUpdate += ",[Website] = '" + txtWebsite.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += ",[Remark1] = '" + txtRemark1.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += ",[Remark2] = '" + txtRemark2.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += ",[Remark3] = '" + txtRemark3.Text.Trim().Replace("'", "''") + "'" + System.Environment.NewLine;
                strUpdate += "Where RecordId='" + Session["ID"].ToString() + "'" + System.Environment.NewLine;
                if (SqlHelp.ForExecuteNonQuery(strUpdate) == true)
                {
                    btnSubmit.Text = "Update";
                    Response.Redirect("~/RecordView.aspx");
                }
            }
        }
        catch (Exception ex)
        {
            throw (ex);
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        Clear();
    }

    protected void FillUpdate()
    {
        try
        {

            DataTable dtUpdate = SqlHelp.GetDataTable("Select * from Record Where RecordId='" + Session["RecordId"].ToString() + "'");
            if (dtUpdate.Rows.Count > 0)
            {
                rbtnPref_Language.SelectedValue = dtUpdate.Rows[0]["Pref_Language"].ToString();
                txtRecordId.Text = dtUpdate.Rows[0]["RecordId"].ToString();
                DateTime ddate = Convert.ToDateTime(dtUpdate.Rows[0]["Date"].ToString());
                txtD_DD.Text = ddate.Day.ToString();
                txtD_MM.Text = ddate.Month.ToString();
                txtD_YY.Text = ddate.Year.ToString();

               

               

                txtCname.Text = dtUpdate.Rows[0]["Cname"].ToString();
                txtBranch.Text = dtUpdate.Rows[0]["Branch"].ToString();
                txtContactPerson.Text = dtUpdate.Rows[0]["ContactPerson"].ToString();
                


                txtDesignation.Text = dtUpdate.Rows[0]["Designation"].ToString();
                txtSector1.Text = dtUpdate.Rows[0]["Sector1"].ToString();
                txtSector2.Text = dtUpdate.Rows[0]["Sector2"].ToString();
                txtLandlineNo0.Text = dtUpdate.Rows[0]["LandlineNo0"].ToString();
                txtLandlineNo1.Text = dtUpdate.Rows[0]["LandlineNo1"].ToString();
                txtMobileNo0.Text = dtUpdate.Rows[0]["MobileNo0"].ToString();
                txtMobileNo1.Text = dtUpdate.Rows[0]["MobileNo1"].ToString();
                txtMobileNo2.Text = dtUpdate.Rows[0]["MobileNo2"].ToString();
               

                txtFaxNo.Text = dtUpdate.Rows[0]["FaxNo"].ToString();
                //photo
                txtAddress.Text = dtUpdate.Rows[0]["Address"].ToString();
                txtCity.Text = dtUpdate.Rows[0]["City"].ToString();
                
                txtState.Text = dtUpdate.Rows[0]["State"].ToString();
                txtEmailId.Text = dtUpdate.Rows[0]["EmailId"].ToString();
                txtWebsite.Text = dtUpdate.Rows[0]["Website"].ToString();
                txtRemark1.Text = dtUpdate.Rows[0]["Remark1"].ToString();
                txtRemark2.Text = dtUpdate.Rows[0]["Remark2"].ToString();
                txtRemark3.Text = dtUpdate.Rows[0]["Remark3"].ToString();

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
   

    //Mail Message For User
    protected string ThanksMessage()
    {
        string strMsg = string.Empty;
        strMsg += "<table width='98%' border='0' align='center' cellpadding='0' cellspacing='0' class='ibdr'>" + System.Environment.NewLine;
        strMsg += " <tr><td>" + System.Environment.NewLine;
        strMsg += "<table width='98%' border='0' align='center' cellpadding='0' cellspacing='4'>" + System.Environment.NewLine;
        strMsg += "<tr><td align='center'>&nbsp;</td></tr>" + System.Environment.NewLine;
        strMsg += " <tr><td height='28' align='center' class='toprk'>" + System.Environment.NewLine;
        strMsg += "<span class='topHeading'>Dear " + txtSector1.Text.Trim().Replace("'", "''") + ",</span>" + System.Environment.NewLine;
        strMsg += "</td></tr>" + System.Environment.NewLine;
        strMsg += "<tr><td height='28' align='center' class='title03'>" + System.Environment.NewLine;
        strMsg += "Congratulations ! You have been successfully registered ." + System.Environment.NewLine;

     
        //Footer Part
        strMsg += "<tr><td height='42' align='center' class='btn_01'>" + System.Environment.NewLine;
        strMsg += "<strong>Thanks &amp; Regards,<br />Co-ordinator(Hindi & English)</strong>" + System.Environment.NewLine;
        strMsg += "</td></tr>" + System.Environment.NewLine;
        strMsg += "<tr><td align='center'>&nbsp;</td></tr>" + System.Environment.NewLine;
        strMsg += "</table>" + System.Environment.NewLine;
        strMsg += "</td></tr>" + System.Environment.NewLine;
        strMsg += "</table>" + System.Environment.NewLine;
        return strMsg;
    }

    /// <summary>
    /// Email Function for Admin
    /// </summary>
    /// <returns></returns>
    //protected string Mail_Admin()
    //{
    //    try
    //    {
    //        string strMsg = string.Empty;
    //        strMsg += "<table cellpadding='0' cellspacing='0' width='500'>" + System.Environment.NewLine;
    //        strMsg += "<tr><td colspan='2'>&nbsp;</td> </tr>" + System.Environment.NewLine;
    //        strMsg += "<tr><td colspan='2' style='font-size: medium; font-weight: 700; font-family: Arial, Helvetica, sans-serif; color: #000000'>" + System.Environment.NewLine;
    //        strMsg += "&nbsp;&nbsp;&nbsp;Online Member Ragistration</td></tr>" + System.Environment.NewLine;
    //        strMsg += " <tr><td colspan='2'>&nbsp; </td></tr>" + System.Environment.NewLine;
    //        strMsg += "<tr><td colspan='2'>" + System.Environment.NewLine;
    //        strMsg += "<table width='500' border='0' align='center' cellpadding='4' cellspacing='1' bgcolor='#EEEEEE'style='font-family: Verdana; font-size: 12px'>" + System.Environment.NewLine;
    //        strMsg += " <tr><td width='125'>&nbsp;&nbsp;&nbsp;Name : </td><td>" + txtFirstName.Text.Trim().Replace("'", "''") + " " + txtLastName.Text.Trim().Replace("'", "''") + "</td></tr>" + System.Environment.NewLine;
    //        if (txtUserName.Text != "")
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;UserName :</td><td>" + txtUserName.Text + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (txtPassword.Text != "")
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Password :</td><td>" + txtPassword.Text + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (txtDOB.Text != "")
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;DOB :</td><td>" + Convert.ToDateTime(txtDOB.Text, enGB).ToString("dd-MMM-yyyy") + "</td></tr>" + System.Environment.NewLine;
    //        }

    //        if (ddlGender.SelectedIndex != 0)
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Gender :</td><td>" + ddlGender.SelectedValue + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (ddlMaritalStatus.SelectedIndex != 0)
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Marital Status :</td><td>" + ddlMaritalStatus.SelectedValue + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (ddlLatestEducation.SelectedIndex != 0)
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Latest Education :</td><td>" + ddlLatestEducation.SelectedValue + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (txtPersonalEmail.Text != "")
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Email :</td><td>" + txtPersonalEmail.Text + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (txtLandline.Text != "")
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Landline :</td><td>" + txtLandline.Text + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (txtMobile.Text != "")
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Nobile No. :</td><td>" + txtMobile.Text + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (txtVillage.Text != "")
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Village :</td><td>" + txtVillage.Text + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (txtGotra.Text != "")
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Gotra :</td><td>" + txtGotra.Text + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (txtAddress1.Text != "")
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Address1 :</td><td>" + txtAddress1.Text + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (txtAddress2.Text != "")
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Address2 :</td><td>" + txtAddress2.Text + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (txtLocality.Text != "")
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Locality :</td><td>" + txtLocality.Text + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (txtCity.Text != "")
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;City :</td><td>" + txtCity.Text + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (txtZipCode.Text != "")
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;ZipCode :</td><td>" + txtZipCode.Text + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (ddlState.SelectedIndex != 0)
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;State :</td><td>" + ddlState.SelectedItem.Text + "</td></tr>" + System.Environment.NewLine;
    //        }
    //        if (ddlCountry.SelectedIndex != 0)
    //        {
    //            strMsg += " <tr><td >&nbsp;&nbsp;&nbsp;Country :</td><td>" + ddlCountry.SelectedItem.Text + "</td></tr>" + System.Environment.NewLine;
    //        }

    //        strMsg += "</table> </td></tr></table>";
    //        return strMsg;
    //    }
    //    catch (Exception ex)
    //    {
    //        throw (ex);
    //    }
    //}


    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx");
    }


    
}
    

