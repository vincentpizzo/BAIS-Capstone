<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddJob.aspx.vb" Inherits="AddJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT [StateName], [StateAbbreviation] FROM [State]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="lbl_searchState" runat="server" Text="Search by State"></asp:Label>
    <asp:TextBox ID="tb_searchState" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_searchState" runat="server" Text="Submit" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="StateName" HeaderText="StateName" SortExpression="StateName" />
            <asp:BoundField DataField="StateAbbreviation" HeaderText="StateAbbreviation" SortExpression="StateAbbreviation" />
        </Columns>
    </asp:GridView>
    
</asp:Content>

