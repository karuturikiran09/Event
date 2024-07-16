<%@ Page Language="C#" MasterPageFile="~/MasterFront.master" AutoEventWireup="true" CodeFile="Record.aspx.cs" Inherits="Record" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
..<script type="text/javascript">

       
        function CheckFieldValidation() {
         
            // Record Id validation          
            if (trim(document.getElementById('<%=txtRecordId.ClientID %>').value).length == 0) {
                alert("Id Required");
                document.getElementById('<%=txtRecordId.ClientID %>').focus();
                return false;
            }
            // T date validation           
            if (trim(document.getElementById('<%=txtD_DD.ClientID %>').value).length == 0) {
                alert("Today Date  Required");
                document.getElementById('<%=txtD_DD.ClientID %>').focus();
                return false;
            }
            //  T month validation           
            if (trim(document.getElementById('<%=txtD_MM.ClientID %>').value).length == 0) {
                alert(" Month Required");
                document.getElementById('<%=txtD_MM.ClientID %>').focus();
                return false;
            }
            // T year validation           
            if (trim(document.getElementById('<%=txtD_YY.ClientID %>').value).length == 0) {
                alert("Year Required");
                document.getElementById('<%=txtD_YY.ClientID %>').focus();
                return false;
            }
           
         
            //Phone1 Validation
            if (trim(document.getElementById('<%=txtLandlineNo0.ClientID %>').value).length == 0) {
                alert("Ladline No0 Required");
                document.getElementById('<%=txtLandlineNo0.ClientID %>').focus();
                return false;
            }
            //Email Validation
            if (trim(document.getElementById('<%=txtEmailId.ClientID %>').value).length == 0) {
                alert("Email Id Required");
                document.getElementById('<%=txtEmailId.ClientID %>').focus();
                return false;
            }
           //Address Validation
            if (trim(document.getElementById('<%=txtAddress.ClientID %>').value).length == 0) {
                alert("Address Required");
                document.getElementById('<%=txtAddress.ClientID %>').focus();
                return false;
                }
                //City Validation
            if (trim(document.getElementById('<%=txtCity.ClientID %>').value).length == 0) {
                alert("City Required");
                document.getElementById('<%=txtCity.ClientID %>').focus();
                return false;
            }
          //State Validation
            if (trim(document.getElementById('<%=txtState.ClientID %>').value).length == 0) {
                alert("State Required");
                document.getElementById('<%=txtState.ClientID %>').focus();
                return false;
                }
             //Mobile Validation
            if (trim(document.getElementById('<%=txtMobileNo0.ClientID %>').value).length == 0) {
                alert("Mobile No Required");
                document.getElementById('<%=txtMobileNo0.ClientID %>').focus();
                return false;
            } 
             //Remark Validation
            if (trim(document.getElementById('<%=txtRemark1.ClientID %>').value).length == 0) {
                alert("Remark1 Required");
                document.getElementById('<%=txtRemark1.ClientID %>').focus();
                return false;
            }
             //CheckBox Agree
            if (document.getElementById('<%=chkAgree.ClientID %>') != null) {
                //Checkbox Validation
                if (document.getElementById('<%=chkAgree.ClientID %>').checked == false && document.getElementById('<%=chkAgree.ClientID %>') != null) {
                    alert("Please Accept Terms & Condition");
                    document.getElementById('<%=chkAgree.ClientID %>').focus();
                    return false;
                }
            }
}
          
           
         </script><table id="table1" width="800px" align="center" 
        style="background-image: url('admin/images/bg_top.jpg')">
          <%-- <tr>
            <td>
                Roll No.
            </td>
            <td>
                <asp:TextBox ID="txtRollNo" runat="server"></asp:TextBox>
            </td>
        </tr>--%>
        <tr>
            <td align="center">
                <asp:Label ID="lblmsg" runat="server" height="25px"></asp:Label>
            </td>            
        </tr>
        <tr>
          <td class="txt">
                <fieldset>
                    <legend>Language Type </legend>
                    <table width="100%">
                        <tr>
                            <td width="40%">
                                Preference for Language</td>
                            <td class="txt">
                                <asp:RadioButtonList ID="rbtnPref_Language" runat="server" RepeatColumns="6" 
                                    RepeatDirection="Horizontal">
                                    <asp:ListItem>Hindi</asp:ListItem>
                                    <asp:ListItem Selected="True">English</asp:ListItem>
                                </asp:RadioButtonList>
                            &nbsp;</td>
                        </tr>
                    </table>
                </fieldset>
            </td>
        </tr>
        <tr>
            <td style="height: 111px">
                <fieldset>
                    <legend>Company Details </legend>
                    <table width="100%" style="color: #008080">
                        <tr>
                            <td class="txt" style="width: 22%; ">
                                Record ID</td>
                            <td style="width: 209px">
                                <asp:TextBox ID="txtRecordId" runat="server" Width="35px"
                                    MaxLength="2"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtRecordId_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtRecordId">
                                    </cc1:FilteredTextBoxExtender>
                                                            </td>
                            <td class="txt">
                                Date</td>
                            <td>
                                &nbsp;
                                DD<asp:TextBox ID="txtD_DD" runat="server" Width="35px"
                                    MaxLength="2"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtD_DD_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtD_DD">
                                    </cc1:FilteredTextBoxExtender>
                                MM<asp:TextBox ID="txtD_MM" runat="server" Width="35px"
                                    MaxLength="2"></asp:TextBox><cc1:FilteredTextBoxExtender ID="txtD_MM_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtD_MM">
                                    </cc1:FilteredTextBoxExtender>
                                YY<asp:TextBox ID="txtD_YY" runat="server" Width="55px"
                                    onchange="filldata();" MaxLength="4"></asp:TextBox><cc1:FilteredTextBoxExtender ID="txtD_YY_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtD_YY">
                                    </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt" style="width: 22%;">
                                Compamny Name</td>
                            <td style="width: 209px">
                                <asp:TextBox ID="txtCname" onchange="filldata();" runat="server"
                                    MaxLength="14" Height="16px" Width="188px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtCname_FilteredTextBoxExtender" runat="server"
                                    Enabled="True" FilterType="Numbers" TargetControlID="txtCname">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                            <td class="txt">
                                Branch</td>
                            <td>
                                <asp:TextBox ID="txtBranch" onchange="filldata();" runat="server"
                                    MaxLength="14"  Height="16px" Width="188px"></asp:TextBox>
                                &nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="txt" style="width: 22%;">
                                Contact Person</td>
                            <td style="width: 209px">
                                <asp:TextBox ID="txtContactPerson" onchange="filldata();" 
                                     runat="server"
                                    MaxLength="14" Height="16px" Width="188px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtContactPerson_FilteredTextBoxExtender" runat="server"
                                    Enabled="True" FilterType="Numbers" TargetControlID="txtContactPerson">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                            <td class="txt">
                                Designation</td>
                            <td>
                                <asp:TextBox ID="txtDesignation" onchange="filldata();" runat="server"
                                    MaxLength="14" Height="16px" Width="188px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </td>
        </tr>
        <tr>
            <td style="height: 363px">
                <fieldset>
                    <legend>Further Information </legend>
                    <table width="100%">
                        <tr>
                            <td class="txt" width="40%">
                                Sector 1</td>
                            <td>
                                <asp:TextBox ID="txtSector1"  runat="server" 
                                    MaxLength="100"  Height="38px" Width="221px" TextMode="MultiLine" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt">
                                Sector 2</td>
                            <td>
                                <asp:TextBox ID="txtSector2"  runat="server" 
                                    MaxLength="100" Height="39px" TextMode="MultiLine" Width="221px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt">
                                Landline No. 1</td>
                            <td class="txt">
                                <asp:TextBox ID="txtLandlineNo0"  runat="server" 
                                    MaxLength="14" Height="16px" Width="191px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt" >
                                Landline No.
                                2</td>
                            <td>
                             
                                
                                <asp:TextBox ID="txtLandlineNo1"  runat="server" 
                                    MaxLength="14" Height="16px" Width="188px"></asp:TextBox>
                             
                                
                            </td>
                        </tr>
                        <%--<tr>
                            <td class="txt">
                                Upload Signature
                            </td>
                            <td>
                                <asp:FileUpload ID="fpSignName" runat="server" />
                            </td>
                        </tr>--%>
                        <tr>
                            <td class="txt">
                                Mobile No. 1</td>
                            <td style="color: #008080; font-weight: bold;">
                                <asp:TextBox ID="txtMobileNo0"  runat="server" 
                                    MaxLength="14" Height="16px" Width="188px"> 
                                    </asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtMobileNo0_FilteredTextBoxExtender" runat="server"
                                    Enabled="True" FilterType="Numbers" TargetControlID="txtMobileNo0">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt">
                                Mobile No. 2</td>
                            <td>
                                <asp:TextBox ID="txtMobileNo1"  runat="server" 
                                    MaxLength="14" Height="16px" Width="188px" ></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtMobileNo1_FilteredTextBoxExtender" runat="server"
                                    Enabled="True" FilterType="Numbers" TargetControlID="txtMobileNo1">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt">
                                Mobile No. 3</td>
                            <td>
                                <asp:TextBox ID="txtMobileNo2"  runat="server" 
                                    MaxLength="14" Height="16px" Width="188px" ></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtMobileNo2_FilteredTextBoxExtender" runat="server"
                                    Enabled="True" FilterType="Numbers" TargetControlID="txtMobileNo2">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt">
                                Fax No</td>
                            <td>
                                <asp:TextBox ID="txtFaxNo"  runat="server" 
                                    MaxLength="14" Height="16px" Width="188px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtFaxNo_FilteredTextBoxExtender" runat="server"
                                    Enabled="True" FilterType="Numbers" TargetControlID="txtFaxNo">
                                </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt">
                                Address</td>
                            <td>
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" MaxLength="100" Height="39px" Width="221px" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt">
                                City</td>
                            <td>
                                <asp:TextBox ID="txtCity"  runat="server" MaxLength="14"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt">
                                State
                            </td>
                            <td>
                                <asp:TextBox ID="txtState"  runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt">
                                Email ID
                            </td>
                            <td>
                                <asp:TextBox ID="txtEmailId" runat="server" MaxLength="100"  Height="39px" Width="221px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt">
                                Website</td>
                            <td>
                                <asp:TextBox ID="txtWebsite"  runat="server" 
                                    MaxLength="14"  Height="16px" Width="188px"></asp:TextBox>
                            </td>
                        </tr>
                        </table>
                </fieldset> </td>
        </tr>
        <tr>
            <td>
                <fieldset>
                    <legend>Remarks </legend>
                    <table width="100%">
                        <tr>
                            <td class="txt" style="width: 141px">
                                Remark 1</td>
                            <td class="txt">
                                &nbsp;<asp:TextBox ID="txtRemark1"  runat="server" 
                                    MaxLength="100" Height="62px" TextMode="MultiLine" Width="500px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt" style="width: 141px">
                                Remark 2</td>
                            <td>
                                <asp:TextBox ID="txtRemark2"  runat="server" 
                                    MaxLength="100" Height="62px" TextMode="MultiLine" Width="500px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt" style="width: 141px">
                                Remark 3</td>
                            <td>
                                <asp:TextBox ID="txtRemark3"  runat="server" 
                                    MaxLength="100" Height="62px" TextMode="MultiLine" Width="500px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </td>
        </tr>
        <tr>
            
            <td align="center">  <asp:CheckBox ID="chkAgree" Checked="true" runat="server" CssClass="txt_new" Text="By submitting, I agree that all info entered was done accurately and truthfully.  " />
               </td>
        </tr>
        <tr>
            
            <td align="center">
                <asp:Button ID="btnSubmit" runat="server" Width="100px" Height="50px" Text="Submit"
                    OnClientClick="return CheckFieldValidation();" OnClick="btnSubmit_Click" />
                &nbsp;&nbsp;<asp:Button ID="btnReset" runat="server" Width="100px" Height="50px"
                    Text="Reset" OnClick="btnReset_Click" />
            &nbsp;<asp:Button ID="btnBack" runat="server" Width="100px" Height="50px"
                    Text="Back" OnClick="btnBack_Click" PostBackUrl="~/index.aspx" />
            </td>
        </tr>
       </table>
</asp:Content>

