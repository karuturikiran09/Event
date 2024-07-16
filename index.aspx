<%@ Page Language="C#" MasterPageFile="~/MasterFront.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
    BackImageUrl="~/images/purplecircle.jpg" style="margin-top: 0px" 
        Width="1428px" Height="1391px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
        <table style="width: 1123px; height: 334px; color: #8080FF;" align="center">
            <tr>
                <td align="left" colspan="2" 
                    
                    
                    style="color: #8080FF; font-size: 14pt; font-style: italic; font-weight: normal; font-family: 'Microsoft Sans Serif'">
                    &nbsp;<asp:Image ID="Image2" runat="server" Height="52px" 
                        ImageUrl="~/admin/images/home.jpg" Width="103px" />
                    <br />
                    WELCOME TO HOME IN ONLINE SALES REPORT&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lnkLogout" runat="server" Font-Size="13pt" Font-Bold="True" 
                        ForeColor="Teal" onclick="lnkLogout_Click" 
                        >Logout</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="height: 30px; width: 291px;">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     <asp:LinkButton ID="Lnkadmin" runat="server" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="Teal" onclick="Lnkadmin_Click" >Admin Login</asp:LinkButton>
                </td>
                <td style="height: 30px">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                    <asp:LinkButton ID="Lnkuser" runat="server" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="Teal" onclick="Lnkuser_Click" >User Login</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 291px">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                     <asp:LinkButton ID="Lnkadmincpw" runat="server" Font-Bold="True" 
                        Font-Size="13pt" ForeColor="Teal" onclick="Lnkadmincpw_Click" >Admin 
                    Change Password</asp:LinkButton>
                </td>
                <td>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                    <asp:LinkButton ID="lnkupw" runat="server" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="Teal" onclick="lnkupw_Click" >User Change 
                    Password</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 291px">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <asp:LinkButton ID="LnkRag" runat="server" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="Teal" onclick="LnkRag_Click" >Ragistration</asp:LinkButton>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    <asp:LinkButton ID="LnkRegview" runat="server" Font-Bold="True" 
                     Font-Size="13pt" ForeColor="Teal" onclick="LnkRegview_Click" >View 
                    User</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 291px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:LinkButton ID="Lnkdar" runat="server" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="Teal" onclick="Lnkdar_Click" >Daily Report</asp:LinkButton>
                </td>
                <td>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
                    <asp:LinkButton ID="lnkdrv" runat="server" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="Teal" onclick="lnkdrv_Click" 
                        PostBackUrl="~/DailyContinue.aspx" >Daily Report 
                    View</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 291px">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
                     <asp:LinkButton ID="lnkRecord" runat="server" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="Teal" onclick="lnkRecord_Click" >Record</asp:LinkButton>
                </td>
                <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
                    <asp:LinkButton ID="lnkrv" runat="server" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="Teal" onclick="lnkrv_Click" >Record View</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 291px">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
                    <asp:LinkButton ID="LnkLeave" runat="server" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="Teal" onclick="LnkLeave_Click" >Leave
                    </asp:LinkButton>
                </td>
                <td>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
                    <asp:LinkButton ID="lnkLv" runat="server" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="Teal" onclick="lnkLv_Click" >Leave View</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 291px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                    <asp:LinkButton ID="Lnksan" runat="server" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="Teal" onclick="Lnksan_Click" >Leave Sanction</asp:LinkButton>
                </td>
                <td>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
                    <asp:LinkButton ID="lnkuhome" runat="server" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="Teal" onclick="lnkuhome_Click" >Welcome Home</asp:LinkButton>
                </td>
            </tr>
        </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Panel>
</asp:Content>

