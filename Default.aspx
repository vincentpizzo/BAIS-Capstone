<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sql_Company" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT [CompanyName], [CompanyAddress], [CompanyCity], [CompanyState], [CompanyZip] FROM [Company]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sql_Major" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [Major]"></asp:SqlDataSource>
<asp:SqlDataSource ID="sql_Position" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [Position]"></asp:SqlDataSource>
<asp:SqlDataSource ID="sql_Semester" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [Semester]"></asp:SqlDataSource>
<asp:SqlDataSource ID="sql_State" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
&nbsp;<br />
    <asp:Label ID="lbl_search" runat="server" Text="Search"></asp:Label>
    <asp:TextBox ID="tb_search" runat="server"></asp:TextBox>
    <asp:Button ID="btn_search" runat="server" Text="Submit" />

    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sql_Company">
        <Columns>
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="CompanyAddress" HeaderText="CompanyAddress" SortExpression="CompanyAddress" />
            <asp:BoundField DataField="CompanyCity" HeaderText="CompanyCity" SortExpression="CompanyCity" />
            <asp:BoundField DataField="CompanyState" HeaderText="CompanyState" SortExpression="CompanyState" />
            <asp:BoundField DataField="CompanyZip" HeaderText="CompanyZip" SortExpression="CompanyZip" />
        </Columns>
    </asp:GridView>
    <br />

</asp:Content>

