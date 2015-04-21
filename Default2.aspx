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
    <asp:SqlDataSource ID="sql_AddJob" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [AddJob]"></asp:SqlDataSource>
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="JobID" DataSourceID="sql_AddJob">
        <EditItemTemplate>
            JobID:
            <asp:Label ID="JobIDLabel1" runat="server" Text='<%# Eval("JobID") %>' />
            <br />
            Major:
            <asp:TextBox ID="MajorTextBox" runat="server" Text='<%# Bind("Major") %>' />
            <br />
            Semester:
            <asp:TextBox ID="SemesterTextBox" runat="server" Text='<%# Bind("Semester") %>' />
            <br />
            Position Type:
            <asp:TextBox ID="Position_TypeTextBox" runat="server" Text='<%# Bind("[Position Type]") %>' />
            <br />
            Position Title:
            <asp:TextBox ID="Position_TitleTextBox" runat="server" Text='<%# Bind("[Position Title]") %>' />
            <br />
            Position Description:
            <asp:TextBox ID="Position_DescriptionTextBox" runat="server" Text='<%# Bind("[Position Description]") %>' />
            <br />
            Position Skills:
            <asp:TextBox ID="Position_SkillsTextBox" runat="server" Text='<%# Bind("[Position Skills]") %>' />
            <br />
            Company Name:
            <asp:TextBox ID="Company_NameTextBox" runat="server" Text='<%# Bind("[Company Name]") %>' />
            <br />
            Company Address:
            <asp:TextBox ID="Company_AddressTextBox" runat="server" Text='<%# Bind("[Company Address]") %>' />
            <br />
            Company State:
            <asp:TextBox ID="Company_StateTextBox" runat="server" Text='<%# Bind("[Company State]") %>' />
            <br />
            Company Zip:
            <asp:TextBox ID="Company_ZipTextBox" runat="server" Text='<%# Bind("[Company Zip]") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Major:
            <asp:TextBox ID="MajorTextBox" runat="server" Text='<%# Bind("Major") %>' />
            <br />
            Semester:
            <asp:TextBox ID="SemesterTextBox" runat="server" Text='<%# Bind("Semester") %>' />
            <br />
            Position Type:
            <asp:TextBox ID="Position_TypeTextBox" runat="server" Text='<%# Bind("[Position Type]") %>' />
            <br />
            Position Title:
            <asp:TextBox ID="Position_TitleTextBox" runat="server" Text='<%# Bind("[Position Title]") %>' />
            <br />
            Position Description:
            <asp:TextBox ID="Position_DescriptionTextBox" runat="server" Text='<%# Bind("[Position Description]") %>' />
            <br />
            Position Skills:
            <asp:TextBox ID="Position_SkillsTextBox" runat="server" Text='<%# Bind("[Position Skills]") %>' />
            <br />
            Company Name:
            <asp:TextBox ID="Company_NameTextBox" runat="server" Text='<%# Bind("[Company Name]") %>' />
            <br />
            Company Address:
            <asp:TextBox ID="Company_AddressTextBox" runat="server" Text='<%# Bind("[Company Address]") %>' />
            <br />
            Company State:
            <asp:TextBox ID="Company_StateTextBox" runat="server" Text='<%# Bind("[Company State]") %>' />
            <br />
            Company Zip:
            <asp:TextBox ID="Company_ZipTextBox" runat="server" Text='<%# Bind("[Company Zip]") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            JobID:
            <asp:Label ID="JobIDLabel" runat="server" Text='<%# Eval("JobID") %>' />
            <br />
            Major:
            <asp:Label ID="MajorLabel" runat="server" Text='<%# Bind("Major") %>' />
            <br />
            Semester:
            <asp:Label ID="SemesterLabel" runat="server" Text='<%# Bind("Semester") %>' />
            <br />
            Position Type:
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="sql_AddJob" DataTextField="Position Type" DataValueField="Position Type">
            </asp:DropDownList>
            <br />
            Position Title:
            <asp:Label ID="Position_TitleLabel" runat="server" Text='<%# Bind("[Position Title]") %>' />
            <br />
            Position Description:
            <asp:Label ID="Position_DescriptionLabel" runat="server" Text='<%# Bind("[Position Description]") %>' />
            <br />
            Position Skills:
            <asp:Label ID="Position_SkillsLabel" runat="server" Text='<%# Bind("[Position Skills]") %>' />
            <br />
            Company Name:
            <asp:Label ID="Company_NameLabel" runat="server" Text='<%# Bind("[Company Name]") %>' />
            <br />
            Company Address:
            <asp:Label ID="Company_AddressLabel" runat="server" Text='<%# Bind("[Company Address]") %>' />
            <br />
            Company State:
            <asp:Label ID="Company_StateLabel" runat="server" Text='<%# Bind("[Company State]") %>' />
            <br />
            Company Zip:
            <asp:Label ID="Company_ZipLabel" runat="server" Text='<%# Bind("[Company Zip]") %>' />
            <br />
        </ItemTemplate>
    </asp:FormView>
<br />

</asp:Content>
