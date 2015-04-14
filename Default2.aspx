<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sql_Company" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT [CompanyName], [CompanyAddress], [CompanyCity], [CompanyState], [CompanyZip] FROM [Company]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sql_Major" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [Major]"></asp:SqlDataSource>
<asp:SqlDataSource ID="sql_Position" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [Position]"></asp:SqlDataSource>
<asp:SqlDataSource ID="sql_Semester" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [Semester]"></asp:SqlDataSource>
<asp:SqlDataSource ID="sql_State" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
&nbsp;<br />
            <%If Not IsPostBack Then%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_vpizzo_HW7 %>" SelectCommand="SELECT * FROM [vpizzo_HW7]"></asp:SqlDataSource>
    &nbsp;<br />
        <asp:Label ID="Label2" runat="server" Text="Search by Brand:"></asp:Label>
        <br />     
        <asp:TextBox ID="tb_Brand" AutoPostBack="true" runat="server"></asp:TextBox>
        <br />
        <%Else%>
        <asp:Label ID="Label1" runat="server" Text="Search by Model:"></asp:Label>
        <br />
        <asp:TextBox ID="tb_Model" AutoPostBack="true" runat="server"></asp:TextBox>
        <%End If%>    
    <br />
    <asp:Label ID="lbl_searchCompany" runat="server" Text="Search"></asp:Label>
    <asp:TextBox ID="tb_Company" runat="server"></asp:TextBox>
    <asp:Button ID="btn_company" runat="server" Text="Submit" />

    <br />

<br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sql_State">
    </asp:GridView>
<br />

</asp:Content>
