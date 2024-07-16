<%@ Page Language="C#" MasterPageFile="~/MasterFront.master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Logout" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/purplecircle.jpg" 
        Height="1204px" style="margin-right: 0px" Width="1495px">
        <table style="width: 1087px; height: 202px;">
            <tr>
                <td style="color: #008000; font-size: 17pt; font-style: italic; font-weight: bold; height: 101px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; You Have Succefully Logout........................&nbsp;</td>
            </tr>
            <tr>
                <td style="color: #008000; font-size: 15pt; font-style: italic; font-weight: bold">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" 
                        ImageUrl="~/admin/images/click1.jpg" onclick="ImageButton1_Click" 
                        Width="96px" />
                    &nbsp; To Login&nbsp; Again..............</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

