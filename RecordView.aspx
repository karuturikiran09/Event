<%@ Page Language="C#" MasterPageFile="~/MasterFront.master" AutoEventWireup="true" CodeFile="RecordView.aspx.cs" Inherits="RecordView" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
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
                                <asp:TextBox ID="txtName" CssClass="formtext_012" runat="server" MaxLength="100"></asp:TextBox>
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
                        <asp:BoundField HeaderText="ReportId" DataField="ReportId" 
                            SortExpression="ReportId" />
                        <asp:BoundField HeaderText="CompanyName" DataField="CompanyName" 
                            SortExpression="CompanyName" />
                        <asp:BoundField HeaderText="Date" DataField="Date" SortExpression="Date" />
                        <asp:BoundField HeaderText="ContactPerson" DataField="ContactPerson" 
                            SortExpression="ContactPerson" />
                        <asp:BoundField HeaderText="PrefLanguage" DataField="PrefLanguage" 
                            SortExpression="PrefLanguage" />
                        <asp:BoundField HeaderText="Designation" DataField="Designation" 
                            SortExpression="Designation" />
                        <asp:BoundField HeaderText="Sector1" DataField="Sector1" 
                            SortExpression="Sector1" />
                        <asp:BoundField HeaderText="Sector2" DataField="Sector2" 
                            SortExpression="Sector2" />
                        <asp:BoundField HeaderText="FaxNo" DataField="FaxNo" SortExpression="FaxNo" />
                        <asp:BoundField HeaderText="Address" DataField="Address" 
                            SortExpression="Address" />
                       
                        <asp:BoundField HeaderText="City" DataField="City" SortExpression="City" />
                        <asp:BoundField HeaderText="Branch" DataField="Branch" 
                            SortExpression="Branch" />
                        <asp:BoundField HeaderText="EmailId" DataField="EmailId" 
                            SortExpression="EmailId" />
                        <asp:BoundField HeaderText="State" DataField="State" SortExpression="State" />
                        <asp:BoundField HeaderText="LandlineNo0" DataField="LandlineNo0" 
                            SortExpression="LandlineNo0" />
                        <asp:BoundField HeaderText="LandlineNo1" DataField="LandlineNo1" 
                            SortExpression="LandlineNo1" />
                        <asp:BoundField HeaderText="MobileNo0" DataField="MobileNo0" 
                            SortExpression="MobileNo0" />
                         <asp:BoundField HeaderText="MobileNo2" DataField="MobileNo2" 
                            SortExpression="MobileNo2" />
                          <asp:BoundField HeaderText="MobileNo3" DataField="MobileNo3" 
                            SortExpression="MobileNo3" />
                           <asp:BoundField HeaderText="Website" DataField="Website" 
                            SortExpression="Website" />
                           <asp:BoundField HeaderText="Remark1" DataField="Remark1" 
                            SortExpression="Remark1" />
                           <asp:BoundField HeaderText="Remark2" DataField="Remark2" 
                            SortExpression="Remark2" />
                          <asp:BoundField DataField="Remark3" HeaderText="Remark3" 
                            SortExpression="Remark3" />
                    </Columns>
                     <HeaderStyle CssClass="grid_header" HorizontalAlign="Center" BackColor="#F8F0A6"
                        BorderColor="#000000" Height="25px" ForeColor="#000000" />
                    <PagerStyle CssClass="pagerLink" HorizontalAlign="Center" Font-Bold="true" />
                    <RowStyle CssClass="grdText" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <EmptyDataRowStyle HorizontalAlign="Center" ForeColor="Red" Font-Size="Medium" Font-Bold="true"
                        Font-Names="Arial" />
                    <AlternatingRowStyle BackColor="#E5E5E5" />
                </asp:GridView>
                   
                  
                
                         
           
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Dsr.bakConnectionString2 %>" 
                    
                    SelectCommand="SELECT ReportId, CompanyName, Date, ContactPerson, PrefLanguage, Designation, Sector1, Sector2, FaxNo, Address, City, Branch, EmailId, State, LandlineNo0, LandlineNo1, MobileNo0, MobileNo2, MobileNo3, Website, Remark1, Remark2, Remark3 FROM Record" 
                    DeleteCommand="DELETE FROM Record WHERE (RecordId = @RecordId)"> 
                    
                </asp:SqlDataSource>
                   
                  
                
                         
           
                   
                  
                
                         
                </td>
        </tr>
        </table>
</asp:Content>
