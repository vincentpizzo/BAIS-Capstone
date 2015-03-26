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
    <asp:Label ID="lbl_searchCompany" runat="server" Text="Search By Company"></asp:Label>
    <asp:TextBox ID="tb_Company" runat="server"></asp:TextBox>
    <asp:Button ID="btn_company" runat="server" Text="Submit" />

    <br />
    Search By Major<asp:TextBox ID="tb_Major" runat="server"></asp:TextBox>
    <asp:Button ID="btn_major" runat="server" Text="Submit" />
    <br />
    Search By Position<asp:TextBox ID="tb_Position" runat="server"></asp:TextBox>
    <asp:Button ID="btn_position" runat="server" Text="Submit" />
    <br />
    Search By Semester<asp:TextBox ID="tb_Semester" runat="server"></asp:TextBox>
    <asp:Button ID="btn_semester" runat="server" Text="Submit" />
    <br />
    Search By State<asp:TextBox ID="tb_State" runat="server"></asp:TextBox>
    <asp:Button ID="btn_state" runat="server" Text="Submit" />

    <br />

<br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sql_State">
    </asp:GridView>
<br />

</asp:Content>
