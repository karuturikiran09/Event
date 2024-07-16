<%@ Page Language="C#" MasterPageFile="~/MasterFront.master" AutoEventWireup="true" CodeFile="LeaveView.aspx.cs" Inherits="LeaveView" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" 
        style="color: #008000; font-size: 17pt; font-style: italic;">
        <tr>
            <td align="left">
                Record Information :-&nbsp;
                <asp:Label ID="lblMsg" runat="server" Text="[lblMsg]" ForeColor="#CC0000" 
                    Visible="False"></asp:Label>
                                                        </td>
        </tr>
        <tr>
            <td align="left">
                Employee Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtName"  runat="server" MaxLength="100"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="Btnsearch" runat="server" Text="Search" onclick="Btnsearch_Click1" />
                <asp:Button ID="Btnadd" runat="server" Text="Add" onclick="Btnadd_Click1" />
                &nbsp;&nbsp;&nbsp;<asp:GridView ID="gvRecord" runat="server" 
                    AutoGenerateColumns="False" Width="100%"
                    OnRowCommand="gvRecord_RowCommand" OnRowDeleting="gvRecord_RowDeleting" EmptyDataText="No Records Available"
                    AllowPaging="True" OnPageIndexChanging="gvRecord_PageIndexChanging" PageSize="40"
                    BackColor="#D6D6D6" onrowcreated="gvRecord_RowCreated" 
                    onselectedindexchanged="gvRecord_SelectedIndexChanged" ShowFooter="True" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField HeaderText="LeaveId" DataField="LeaveId" 
                            SortExpression="LeaveId" />
                        <asp:BoundField HeaderText="Pref_Language" DataField="Pref_Language" 
                            SortExpression="Pref_Language" />
                        <asp:BoundField HeaderText="From" DataField="From" SortExpression="From" />
                        <asp:BoundField HeaderText="To" DataField="To" SortExpression="To" />
                        <asp:BoundField HeaderText="Date" DataField="Date" SortExpression="Date" />
                        <asp:BoundField HeaderText="Reason" DataField="Reason" 
                            SortExpression="Reason" />
                        <asp:BoundField HeaderText="Charge" DataField="Charge" 
                            SortExpression="Charge" />
                        <asp:BoundField HeaderText="EmployeeName" DataField="EmployeeName" 
                            SortExpression="EmployeeName" />
                        <asp:BoundField HeaderText="Designation" DataField="Designation" 
                            SortExpression="Designation" />
                        <asp:BoundField HeaderText="SanctionFrom" DataField="SanctionFrom" 
                            SortExpression="SanctionFrom" />
                       
                        <asp:BoundField HeaderText="SanctionTo" DataField="SanctionTo" 
                            SortExpression="SanctionTo" />
                          <asp:BoundField DataField="Check1" HeaderText="Check1" 
                            SortExpression="Check1" />
                        <asp:BoundField DataField="Check2" HeaderText="Check2" 
                            SortExpression="Check2" />
                        <asp:BoundField DataField="orgname" HeaderText="orgname" 
                            SortExpression="orgname" />
                        <asp:BoundField DataField="orgname2" HeaderText="orgname2" 
                            SortExpression="orgname2" />
                    </Columns>
                     <HeaderStyle  HorizontalAlign="Center" BackColor="#F8F0A6"
                        BorderColor="#000000" Height="25px" ForeColor="#000000" />
                    <PagerStyle  HorizontalAlign="Center" Font-Bold="true" />
                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <EmptyDataRowStyle HorizontalAlign="Center" ForeColor="Red" Font-Size="Medium" Font-Bold="true"
                        Font-Names="Arial" />
                    <AlternatingRowStyle BackColor="#E5E5E5" />
                </asp:GridView>
                           
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Dsr.bakConnectionString4 %>" 
                    
                    SelectCommand="SELECT [LeaveId], [Pref_Language], [From], [To], [Date], [Reason], [Charge], [EmployeeName], [Designation], [Department], [SanctionFrom], [SanctionTo], [Check1], [Check2], [orgname], [orgname2] FROM [Leave]" 
                    DeleteCommand="DELETE FROM Leave WHERE (LeaveId = @LeaveId)">
                </asp:SqlDataSource>
                           
                </td>
        </tr>
        </table>
</asp:Content>


