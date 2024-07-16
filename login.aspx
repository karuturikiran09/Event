<%@ Page Language="C#" MasterPageFile="~/MasterFront.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript">

        function CheckValidate() {

            if (trim(document.getElementById('txtUserName').value).length == 0 || trim(document.getElementById('txtUserName').value) == "User Name") {
                document.getElementById('<%=lblMsg.ClientID %>').innerHTML = "User Name Required";
                document.getElementById('txtUserName').focus();
                return false;
            }
            if (trim(document.getElementById('txtPassword').value).length == 0 || trim(document.getElementById('txtPassword').value) == "Password") {
                document.getElementById('<%=lblMsg.ClientID %>').innerHTML = "Password Required";
                document.getElementById('txtPassword').focus();
                return false;
            }
            return true;
        }

        function trim(str) {
            if (!str || typeof str != 'string')
                return null;

            return str.replace(/^[\s]+/, '').replace(/[\s]+$/, '').replace(/[\s]{2,}/, ' ');
        }
    </script>

    <table border="0" align="center" cellpadding="0" cellspacing="0" 
        style="width: 922px">
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td height="370px" valign="top" background="images/login.jpg" align="center">
                <table width="85%" border="0" align="center" cellpadding="0" cellspacing="6">
                    <tr>
                        <td height="43" align="right" class="btn_06">
                            &nbsp;
                        </td>
                        <td align="left" class="loginStudent" style="width: 68%">
                            Employee Login
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="btn_06">
                            &nbsp;
                        </td>
                        <td align="left" class="btn_0555" style="width: 68%">
                            <asp:Label ID="lblMsg" runat="server" BorderWidth="0px" CssClass="btn_0555"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="32%" height="33" valign="top" 
                            style="color: #008000; font-size: 14pt; font-weight: bold">
                            &nbsp;
                            Employee ID</td>
                        <td valign="middle" style="width: 68%" align="left">
                            <asp:TextBox ID="txtUserName" runat="server" class="textlogin" Style="font-family: verdana,helvetica,sans-serif;
                                font-size: 12px; width: 230px;"></asp:TextBox>
                            <cc1:TextBoxWatermarkExtender ID="txtUserName_TextBoxWatermarkExtender" runat="server"
                                Enabled="True" TargetControlID="txtUserName" WatermarkText="User Name">
                            </cc1:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr>
                        <td height="33" valign="top" 
                            style="color: #008000; font-size: 14pt; font-weight: bold;">
                            Password</td>
                        <td valign="middle" style="width: 68%" align="left">
                            <asp:TextBox class="textlogin" ID="txtPassword" TextMode="Password" runat="server" Style="font-family: verdana,helvetica,sans-serif;
                                font-size: 12px; width: 230px;"></asp:TextBox>
                            <cc1:TextBoxWatermarkExtender ID="txtPassword_TextBoxWatermarkExtender" runat="server"
                                Enabled="True" TargetControlID="txtPassword" WatermarkText="Password">
                            </cc1:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr>
                        <td height="44" align="right">
                            &nbsp;
                        </td>
                        <td align="left" valign="middle" style="width: 68%">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btnText1" 
                                OnClientClick="return CheckValidate();" onclick="btnLogin_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
