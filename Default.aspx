<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sql_Company" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [Company]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sql_Major" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [Major]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sql_Position" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [Position]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sql_Semester" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [Semester]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sql_State" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
&nbsp;<br />
    <asp:Label ID="lbl_search" runat="server" Text="Search"></asp:Label>
    <asp:TextBox ID="tb_search" runat="server"></asp:TextBox>
    <asp:Button ID="btn_search" runat="server" Text="Submit" />

</asp:Content>

