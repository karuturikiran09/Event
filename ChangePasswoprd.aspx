<%@ Page Language="C#" MasterPageFile="~/MasterFront.master" AutoEventWireup="true" CodeFile="ChangePasswoprd.aspx.cs" Inherits="ChangePasswoprd" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript">
  function CheckValidate() {
        
        
            
            if (trim(document.getElementById('<%=tboldpass.ClientID %>').value).length == 0) {
                document.getElementById('<%=lblMsg.ClientID %>').innerHTML = "Old Password Required";
                return false;
            }
            if (trim(document.getElementById('<%=tbnewpass.ClientID %>').value).length == 0) {
                document.getElementById('<%=lblMsg.ClientID %>').innerHTML = "New Password Required";
                return false;
            }
            if (trim(document.getElementById('<%=tbconfirmnewpass.ClientID %>').value).length == 0) {
                document.getElementById('<%=lblMsg.ClientID %>').innerHTML = "Confirm Password Required";
                return false;
            }
            if (trim(document.getElementById('<%=tbconfirmnewpass.ClientID %>').value) != trim(document.getElementById('<%=tbnewpass.ClientID %>').value)) {
                document.getElementById('<%=lblMsg.ClientID %>').innerHTML = "Password does not matched!";
                return false;
            }
            return true;
        }

        function trim(str) {
            //if (!str || typeof str != 'string')
                //return null;

            return str.replace(/^[\s]+/, '').replace(/[\s]+$/, '').replace(/[\s]{2,}/, ' ');
        }
    </script>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table width="800px" cellpadding="0" cellspacing="0">
                <tr>
                    <td align="left" height="40px">
                        <span class=""><strong>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        Change Password</strong> </span>
                    </td>
                </tr>
                <tr>
                    <td height="25px" align="center">
                        <asp:Label ID="lblMsg" runat="server" CssClass=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <table width="500px" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFFF">
                                    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" 
                                        class="" style="height: 110px">
                                        <tr>
                                            <td>
                                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                    <tbody>
                                    <tr>
                                        <td>
                                            <table  align="center" cellpadding="0" cellspacing="0" width="100%">
                                                <tbody>
                                                    <tr>
                                                        <td align="center" >
                                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                <tr bgcolor="#EBEBEB">
                                                                   <td class="txt" height="30px" align="left">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #ff0000">* </span>Old Password
                                                                    </td>
                                                                    <td width="59%" align="left" class="">
                                                                        <asp:TextBox ID="tboldpass" runat="server" TextMode="Password" CssClass="text"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr bgcolor="#FCFCFC">
                                                                     <td class="txt" height="30px" align="left">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #ff0000">* </span>New Password
                                                                    </td>
                                                                    <td align="left" class="">
                                                                        <asp:TextBox ID="tbnewpass" runat="server" TextMode="Password" CssClass="text"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr bgcolor="#EBEBEB">
                                                                    <td class="txt" height="30px" align="left">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #ff0000">* </span>Confirm Password
                                                                    </td>
                                                                    <td align="left" class="">
                                                                        <asp:TextBox ID="tbconfirmnewpass" runat="server" TextMode="Password"
                                                                            CssClass="text"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr bgcolor="#FCFCFC">
                                                                    <td height="45px" class="txt">
                                                                        &nbsp;</td>
                                                                    <td align="left" class="">
                                                                        <asp:Button ID="Ibtn_Update" runat="server" CssClass="posText" 
                                                                             OnClientClick="return CheckValidate();" 
                                                                            Text="Submit" onclick="Ibtn_Update_Click1" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
     <asp:UpdateProgress ID="UpdateProgress1" runat="server" DisplayAfter="0">
        <ProgressTemplate>
            <div style="z-index: 100; position: fixed; width: 100%; top: 275px; left: 13px;">
                
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>

</asp:Content>

