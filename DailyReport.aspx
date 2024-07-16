<%@ Page Language="C#" MasterPageFile="~/MasterFront.master" AutoEventWireup="true" CodeFile="DailyReport.aspx.cs" Inherits="DailyReport" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type="text/javascript">



        function CheckFieldValidation() {
        // Id validation
            if (trim(document.getElementById('<%=txtLeaveId.ClientID %>').value).length == 0) {
                alert(" Id Required");
                document.getElementById('<%=txtLeaveId.ClientID %>').focus();
                return false;
            }
            // Duty Time In validation
            if (trim(document.getElementById('<%=txtDutyIn.ClientID %>').value).length == 0) {
                alert("Duty Time In Required");
                document.getElementById('<%=txtDutyIn.ClientID %>').focus();
                return false;
            }
           // Duty Time In validation
            if (trim(document.getElementById('<%=txtDutyIn.ClientID %>').value).length == 0) {
                alert("Duty Time In Required");
                document.getElementById('<%=txtDutyIn.ClientID %>').focus();
                return false;
            }
            //Date Validation
            if (trim(document.getElementById('<%=txtD_DD.ClientID %>').value).length == 0) {
                alert("Date Required");
                document.getElementById('<%=txtD_DD.ClientID %>').focus();
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
              //Department Validation
            if (trim(document.getElementById('<%=rbtnDept.ClientID %>').value).length == 0) {
                alert("Department Name Required");
                document.getElementById('<%=rbtnDept.ClientID %>').focus();
                return false;
            }
             //Work duty Validation
            if (trim(document.getElementById('<%=txtdho.ClientID %>').value).length == 0) {
                alert("work duty Required");
                document.getElementById('<%=txtdho.ClientID %>').focus();
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
                    <legend>General Details </legend>
                    <table width="100%" style="height: 100px">
                        <tr>
                            <td class="txt" style="width: 34%">
                                Daily Report ID</td>
                            <td style="width: 196px">
                                <asp:TextBox ID="txtLeaveId" onchange="filldata();" 
                                     runat="server"
                                    MaxLength="6" Height="16px"     Width="69px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtLeaveId_FilteredTextBoxExtender" runat="server"
                                    Enabled="True" FilterType="Numbers" TargetControlID="txtLeaveId">
                                </cc1:FilteredTextBoxExtender>
                                &nbsp;</td>
                            <td class="txt">
                                Day</td>
                            <td>
                                <asp:DropDownList ID="DrpDay" runat="server" Height="21px">
                                    <asp:ListItem>...\\Select\\...</asp:ListItem>
                                    <asp:ListItem>Sunday</asp:ListItem>
                                    <asp:ListItem>Monday</asp:ListItem>
                                    <asp:ListItem>Tuesday</asp:ListItem>
                                    <asp:ListItem>Wednesday</asp:ListItem>
                                    <asp:ListItem>Thrusday</asp:ListItem>
                                    <asp:ListItem>Friday</asp:ListItem>
                                    <asp:ListItem>Saturaday</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td class="txt" style="width: 34%">
                                Duty Time IN</td>
                            <td style="width: 196px">
                                <asp:TextBox ID="txtDutyIn" onchange="filldata();"  runat="server"
                                    MaxLength="6" Height="16px"
                                    Width="69px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtDutyIn_FilteredTextBoxExtender" runat="server"
                                    Enabled="True" FilterType="Numbers" TargetControlID="txtDutyIn">
                                </cc1:FilteredTextBoxExtender>
                                <asp:RadioButtonList ID="rbtnam" runat="server" RepeatColumns="6" 
                                    RepeatDirection="Horizontal" Font-Size="7pt">
                                    <asp:ListItem>AM</asp:ListItem>
                                    <asp:ListItem Selected="True">PM</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td class="txt">
                                Current&nbsp; Date
                            </td>
                            <td>
                                DD<asp:TextBox ID="txtD_DD" runat="server" Width="35px"
                                    MaxLength="2"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtD_DD_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtD_DD">
                                    </cc1:FilteredTextBoxExtender>
                              MM<asp:TextBox ID="txtD_MM" runat="server" Width="35px"
                                    MaxLength="2"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtD_MM_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtD_MM">
                                    </cc1:FilteredTextBoxExtender>
                                YY<asp:TextBox ID="txtD_YY" runat="server" Width="55px"
                                    onchange="filldata();" MaxLength="4"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtD_YY_FilteredTextBoxExtender"
                                        runat="server" Enabled="True" FilterType="Numbers" 
                                    TargetControlID="txtD_YY">
                                    </cc1:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="txt" style="width: 34%">
                                Duty Time Out</td>
                            <td style="width: 196px">
                                <asp:TextBox ID="txtDutyOut" onchange="filldata();" 
                                    runat="server"
                                    MaxLength="6" Height="16px" 
                                    Width="71px"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtDutyOut_FilteredTextBoxExtender" runat="server"
                                    Enabled="True" FilterType="Numbers" TargetControlID="txtDutyOut">
                                </cc1:FilteredTextBoxExtender>
                                <asp:RadioButtonList ID="rbtnpm" runat="server" RepeatColumns="6" 
                                    RepeatDirection="Horizontal" Font-Size="7pt">
                                    <asp:ListItem>AM</asp:ListItem>
                                    <asp:ListItem Selected="True">PM</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td class="txt">
                                Prev Date</td>
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
                    <legend>Employee Work Information </legend>
                    <table width="100%" style="height: 146px">
                        <tr>
                            <td class="txt" width="40%">
                                Name Of Employee
                            </td>
                            <td style="width: 420px">
                                <asp:TextBox ID="txtName"  runat="server" 
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
                            <td class="txt" style="height: 40px">
                                Organizar Name</td>
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
                    <legend>Reason For Coming Late on duty /going early from duty/Absent from duty: </legend>
                    <table width="100%">
                        <tr>
                            <td class="txt">
                                <asp:TextBox ID="txtAbsent"  runat="server" 
                                    MaxLength="100" Height="105px" TextMode="MultiLine" Width="784px"></asp:TextBox>
                            </td>
                        </tr>
                        </table>
                </fieldset>
            </td>
        </tr>
        
       
        <tr>
            <td>
                <fieldset>
                    <legend>Work&nbsp; done in duty hours on the day</legend>
                                                    <table style="width: 786px">
                                                        <tr>
                                                            <td>
                                <asp:TextBox ID="txtdho"  runat="server" MaxLength="100" Height="105px" 
                                                                    TextMode="MultiLine" Width="784px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                </fieldset>
                
            </td>
      
    
        </tr>
        <tr>
            <td>
                <fieldset>
                    <legend>Work alloted but done in duty Time </legend>
                    <table width="100%">
                        <tr>
                            <td class="txt" style="height: 23px">
                                <asp:TextBox ID="txtalloted"  runat="server" 
                                    MaxLength="100" Height="105px" TextMode="MultiLine" Width="784px"></asp:TextBox>
                            </td>
                        </tr>
                        </table>
                </fieldset>
                   
            </td>
        </tr>
        
        
        <tr>
            <td>
                <fieldset>
                    <legend>Majors</legend>
                                                    <table style="width: 786px">
                                                        <tr>
                                                            <td style="width: 385px">
                                                                Major Problems Observed</td>
                                                            <td>
                                                                Any Major Material Requirement</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 385px">
                                <asp:TextBox ID="txtMO"  runat="server" 
                                    MaxLength="100"  Height="103px" Width="397px" TextMode="MultiLine" ></asp:TextBox>
                                                            </td>
                                                            <td>
                                <asp:TextBox ID="txtMM"  runat="server" 
                                    MaxLength="100"  Height="103px" Width="391px" TextMode="MultiLine" ></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                </fieldset>
                
            </td>
      
    
        </tr>
        <tr>
         <td>
                <fieldset>
                    <legend>Any Suggestion</legend>
                                                    <table style="width: 786px">
                                                        <tr>
                                                            <td>
                                <asp:TextBox ID="txtSuggestion"  runat="server" 
                                    MaxLength="100" Height="105px" TextMode="MultiLine" Width="784px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        </table>
                </fieldset>
                
            </td>
      
    
        </tr>
        <tr>
           
           
        
            
            <td align="center">  <asp:CheckBox ID="chkAgree" Checked="true" runat="server" Text="By submitting, I agree that all info entered was done accurately and truthfully.  " />
               </td>
        </tr>
        <tr>
            
            <td align="center">
                <asp:Button ID="btnSubmit" runat="server" Width="100px" Height="50px" Text="Submit"
                    OnClientClick="return CheckFieldValidation();" 
                    onclick="btnSubmit_Click1" />
                &nbsp;&nbsp;<asp:Button ID="btnReset" runat="server" Width="100px" Height="50px"
                    Text="Reset" onclick="btnReset_Click1"  />
            &nbsp;<asp:Button ID="btnBack" runat="server" Width="100px" Height="50px"
                    Text="Back"  PostBackUrl="~/index.aspx" onclick="btnBack_Click1" />
            </td>
        </tr>
       </table>
</asp:Content>




