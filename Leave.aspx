<%@ Page Language="C#" MasterPageFile="~/MasterFront.master" AutoEventWireup="true" CodeFile="Leave.aspx.cs" Inherits="Leave" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <script type="text/javascript">



        function CheckFieldValidation() {
        
           
            //Date Validation
            if (trim(document.getElementById('<%=txtD_DD.ClientID %>').value).length == 0) {
                alert("Date Required");
                document.getElementById('<%=txtD_DD.ClientID %>').focus();
                return false;
            }
              //Id Validation
            if (trim(document.getElementById('<%=txtLeaveId.ClientID %>').value).length == 0) {
                alert("Id Required");
                document.getElementById('<%=txtLeaveId.ClientID %>').focus();
                return false;
            }
            //Month Validation
            if (trim(document.getElementById('<%=txtD_MM.ClientID %>').value).length == 0) {
            
                alert("Month Required");
                document.getElementById('<%=txtD_MM.ClientID %>').focus();
                return false;
            }
               //Year Validation
            if (trim(document.getElementById('<%=txtD_YY.ClientID %>').value).length == 0) {
                alert("Year Required");
                document.getElementById('<%=txtD_YY.ClientID %>').focus();
                return false;
        }
           //Date Validation
            if (trim(document.getElementById('<%=txtF_DD.ClientID %>').value).length == 0) {
                alert("Date Required");
                document.getElementById('<%=txtF_DD.ClientID %>').focus();
                return false;
            }
            //Month Validation
            if (trim(document.getElementById('<%=txtF_MM.ClientID %>').value).length == 0) {
            
                alert("Month Required");
                document.getElementById('<%=txtF_MM.ClientID %>').focus();
                return false;
            }
               //Year Validation
            if (trim(document.getElementById('<%=txtF_YY.ClientID %>').value).length == 0) {
                alert("Year Required");
                document.getElementById('<%=txtF_YY.ClientID %>').focus();
                return false;
        }   //Date Validation
            if (trim(document.getElementById('<%=txtT_DD.ClientID %>').value).length == 0) {
                alert("Date Required");
                document.getElementById('<%=txtT_DD.ClientID %>').focus();
                return false;
            }
            //Month Validation
            if (trim(document.getElementById('<%=txtT_MM.ClientID %>').value).length == 0) {
            
                alert("Month Required");
                document.getElementById('<%=txtT_MM.ClientID %>').focus();
                return false;
            }
               //Year Validation
            if (trim(document.getElementById('<%=txtT_YY.ClientID %>').value).length == 0) {
                alert("Year Required");
                document.getElementById('<%=txtT_YY.ClientID %>').focus();
                return false;
        }
              //charge To  Validation
            if (trim(document.getElementById('<%=Drpcharge.ClientID %>').value).length == 0) {
                alert("Charge Name Required");
                document.getElementById('<%=Drpcharge.ClientID %>').focus();
                return false;
            }
              //Department Validation
            if (trim(document.getElementById('<%=rbtnDept.ClientID %>').value).length == 0) {
                alert("Department Name Required");
                document.getElementById('<%=rbtnDept.ClientID %>').focus();
                return false;
            }
             //Designation Validation
            if (trim(document.getElementById('<%=txtD_des.ClientID %>').value).length == 0) {
                alert("Designation Required");
                document.getElementById('<%=txtD_des.ClientID %>').focus();
                return false;
            } //Reason Validation
            if (trim(document.getElementById('<%=txtReason.ClientID %>').value).length == 0) {
                alert("Designation Required");
                document.getElementById('<%=txtReason.ClientID %>').focus();
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
    </script>

    <table id="table1" width="800px" align="center" 
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
            <td>
                <fieldset>
                    <legend>Leave Details </legend>
                    <table width="100%" style="height: 100px">
                        <tr>
                            <td class="txt" style="width: 33%">
                                Leave ID</td>
                            <td style="width: 229px">
                                <asp:TextBox ID="txtLeaveId" onchange="filldata();" 
                                     runat="server"
                                    MaxLength="6" Height="17px"     Width="69px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtLeaveId_FilteredTextBoxExtender" runat="server"
                                    Enabled="True" FilterType="Numbers" TargetControlID="txtLeaveId">
                                </cc1:FilteredTextBoxExtender>
                                &nbsp;</td>
                            <td class="txt">
                                &nbsp;</td>
                            <td>
                                &nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td class="txt" style="width: 33%; height: 28px;">
                                From </td>
                            <td style="height: 28px; width: 229px">
                                DD<asp:TextBox ID="txtF_DD" runat="server" Width="35px" Height="17px"
                                    MaxLength="2"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtF_DD_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtF_DD">
                                    </cc1:FilteredTextBoxExtender>
                                MM<asp:TextBox ID="txtF_MM" runat="server" Width="35px" Height="17px"
                                    MaxLength="2"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtF_MM_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtF_MM">
                                    </cc1:FilteredTextBoxExtender>
                              YY<asp:TextBox ID="txtF_YY" runat="server" Width="55px"
                                    onchange="filldata();" MaxLength="4" Height="17px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtF_YY_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtF_YY">
                                    </cc1:FilteredTextBoxExtender>
                            </td>
                            <td class="txt" style="height: 28px">
                                Fill&nbsp; Date                             </td>
                            <td style="height: 28px">
                              DD<asp:TextBox ID="txtD_DD" runat="server" Width="35px" Height="17px"
                                    MaxLength="2"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtD_DD_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtD_DD">
                                    </cc1:FilteredTextBoxExtender>
                               MM<asp:TextBox ID="txtD_MM" runat="server" Width="35px" Height="17px"
                                    MaxLength="2"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtD_MM_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtD_MM">
                                    </cc1:FilteredTextBoxExtender>
                                YY<asp:TextBox ID="txtD_YY" runat="server" Width="55px" Height="17px"
                                    onchange="filldata();" MaxLength="4"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtD_YY_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtD_YY">
                                    </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt" style="width: 33%">
                                To</td>
                            <td style="width: 229px">
                                DD<asp:TextBox ID="txtT_DD" runat="server" Width="35px"
                                    MaxLength="2" Height="17px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtT_DD_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtT_DD">
                                    </cc1:FilteredTextBoxExtender>
                               MM<asp:TextBox ID="txtT_MM" runat="server" Width="35px"
                                    MaxLength="2" Height="17px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtT_MM_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtT_MM">
                                    </cc1:FilteredTextBoxExtender>
                                YY<asp:TextBox ID="txtT_YY" runat="server" Width="55px"
                                    onchange="filldata();" MaxLength="4" Height="18px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtT_YY_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtT_YY">
                                    </cc1:FilteredTextBoxExtender>
                            </td>
                            <td class="txt">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </fieldset>
            </td>
        </tr>
        <tr>
            <td style="height: 145px">
                <fieldset style="height: 177px; margin-top: 0px">
                    <legend>Employee Information </legend>
                    <table width="100%" style="height: 146px">
                        <tr>
                            <td class="txt" width="40%">
                                Name Of Employee
                            </td>
                            <td style="width: 420px">
                                <asp:TextBox ID="txtName" runat="server" 
                                    MaxLength="100" Height="16px" Width="212px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt">
                                Designation</td>
                            <td style="width: 420px">
                                <asp:TextBox ID="txtD_des"  runat="server" MaxLength="100" 
                                    Height="16px" Width="212px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt">
                                Department</td>
                            <td class="txt" style="width: 420px">
                                <asp:RadioButtonList ID="rbtnDept" runat="server" RepeatColumns="6" 
                                    RepeatDirection="Horizontal" Font-Size="8pt">
                                    <asp:ListItem Selected="True">HR</asp:ListItem>
                                    <asp:ListItem>Software Department</asp:ListItem>
                                    <asp:ListItem>Sales\Marketing</asp:ListItem>
                                    <asp:ListItem>Telecalling</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:RadioButtonList>
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
                                Charge To</td>
                            <td class="txt" style="width: 420px">
                                <asp:DropDownList ID="Drpcharge" runat="server" Height="24px" Width="132px">
                                    <asp:ListItem>..../Select/......</asp:ListItem>
                                    <asp:ListItem>Abhijeet Sharma</asp:ListItem>
                                    <asp:ListItem>Amit Bhavsar</asp:ListItem>
                                    <asp:ListItem>Anup Sharma</asp:ListItem>
                                     <asp:ListItem>Heena Sanadhya</asp:ListItem>
                                    <asp:ListItem>Lokesh Joshi</asp:ListItem>
                                    <asp:ListItem>Mansi yadav</asp:ListItem>
                                    <asp:ListItem>Nupur Sukhwal</asp:ListItem>
                                    <asp:ListItem>Yuvraj Singh Chouhan</asp:ListItem>
                                    
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt" style="height: 40px">
                                Sanction By</td>
                            <td style="height: 40px; width: 420px;">
                                <asp:DropDownList ID="Drporg" runat="server" Height="24px" Width="132px">
                                    <asp:ListItem>Abhijeet Sharma</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        </table> 
                </fieldset> </td>
        </tr>
        <tr>
            <td>
                <fieldset>
                    <legend>Reason For Leave: </legend>
                    <table width="100%">
                        <tr>
                            <td class="txt">
                                <asp:TextBox ID="txtReason"  runat="server" 
                                    MaxLength="100" Height="105px" TextMode="MultiLine" Width="784px"></asp:TextBox>
                            </td>
                        </tr>
                        </table>
                </fieldset>
            </td>
        </tr>
        
       
        <tr>
           
           
        
            
            <td align="center">  <asp:CheckBox ID="chkAgree" Checked="true" runat="server"  Text="By submitting, I agree that all info entered was done accurately and truthfully.  " />
               </td>
        </tr>
        <tr>
            
            <td align="center">
                <asp:Button ID="btnSubmit" runat="server" Width="100px" Height="50px" Text="Submit"
                    OnClientClick="return CheckFieldValidation();" onclick="btnSubmit_Click" />
                &nbsp;&nbsp;&nbsp;<asp:Button ID="btnBack" runat="server" Width="100px" Height="50px"
                    Text="Back"  PostBackUrl="~/index.aspx" onclick="btnBack_Click1" />
            &nbsp;
            </td>
        </tr>
       </table>
</asp:Content>




