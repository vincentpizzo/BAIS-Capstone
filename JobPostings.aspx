<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="JobPostings.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceJobs" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" DeleteCommand="SELECT studentplacement.placementid,
       [position(new)].positiontype,
       [position(new)].positiontitle,
       [position(new)].positiondescription,
       skill.skilldescription,
       company.companyname
FROM   [position(new)]
       INNER JOIN skill
               ON [position(new)].skillid = skill.skillid
       INNER JOIN studentplacement
               ON [position(new)].positionid = studentplacement.positionid
       INNER JOIN company
               ON studentplacement.companyid = company.companyid
       INNER JOIN major
               ON studentplacement.majorid = major.majorid
       INNER JOIN semester
               ON studentplacement.semesterid = semester.semesterid
       INNER JOIN aspnet_users
               ON studentplacement.username = aspnet_users.username  
       INNER JOIN skill
               ON [position(new)].skillid = skill.skillid
       INNER JOIN studentplacement
               ON [position(new)].positionid = studentplacement.positionid
       INNER JOIN company
               ON studentplacement.companyid = company.companyid
       INNER JOIN major
               ON studentplacement.majorid = major.majorid
       INNER JOIN semester
               ON studentplacement.semesterid = semester.semesterid
       INNER JOIN aspnet_users
               ON studentplacement.username = aspnet_users.username  " InsertCommand="SELECT studentplacement.placementid,
       [position(new)].positiontype,
       [position(new)].positiontitle,
       [position(new)].positiondescription,
       skill.skilldescription,
       company.companyname
FROM   [position(new)]
       INNER JOIN skill
               ON [position(new)].skillid = skill.skillid
       INNER JOIN studentplacement
               ON [position(new)].positionid = studentplacement.positionid
       INNER JOIN company
               ON studentplacement.companyid = company.companyid
       INNER JOIN major
               ON studentplacement.majorid = major.majorid
       INNER JOIN semester
               ON studentplacement.semesterid = semester.semesterid
       INNER JOIN aspnet_users
               ON studentplacement.username = aspnet_users.username  " SelectCommand="SELECT studentplacement.placementid,
       [position(new)].positiontype,
       [position(new)].positiontitle,
       [position(new)].positiondescription,
       skill.skilldescription,
       company.companyname
FROM   [position(new)]
       INNER JOIN skill
               ON [position(new)].skillid = skill.skillid
       INNER JOIN studentplacement
               ON [position(new)].positionid = studentplacement.positionid
       INNER JOIN company
               ON studentplacement.companyid = company.companyid
       INNER JOIN major
               ON studentplacement.majorid = major.majorid
       INNER JOIN semester
               ON studentplacement.semesterid = semester.semesterid
       INNER JOIN aspnet_users
               ON studentplacement.username = aspnet_users.username  " UpdateCommand="SELECT studentplacement.placementid,
       [position(new)].positiontype,
       [position(new)].positiontitle,
       [position(new)].positiondescription,
       skill.skilldescription,
       company.companyname
FROM   [position(new)]
       INNER JOIN skill
               ON [position(new)].skillid = skill.skillid
       INNER JOIN studentplacement
               ON [position(new)].positionid = studentplacement.positionid
       INNER JOIN company
               ON studentplacement.companyid = company.companyid
       INNER JOIN major
               ON studentplacement.majorid = major.majorid
       INNER JOIN semester
               ON studentplacement.semesterid = semester.semesterid
       INNER JOIN aspnet_users
               ON studentplacement.username = aspnet_users.username  "></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" DataKeyNames="placementid" DataSourceID="SqlDataSourceJobs" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="placementid" HeaderText="Job ID" InsertVisible="False" ReadOnly="True" SortExpression="placementid" />
            <asp:BoundField DataField="positiontype" HeaderText="Job Type" SortExpression="positiontype" />
            <asp:BoundField DataField="positiontitle" HeaderText="Job Title" SortExpression="positiontitle" />
            <asp:BoundField DataField="positiondescription" HeaderText="Job Description" SortExpression="positiondescription" />
            <asp:BoundField DataField="skilldescription" HeaderText="Job Skills" SortExpression="skilldescription" />
            <asp:BoundField DataField="companyname" HeaderText="Company Name" SortExpression="companyname" />
            <asp:HyperLinkField DataNavigateUrlFields="placementID" DataNavigateUrlFormatString="JobDetails.aspx?placementID={0}" Text="View" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
</asp:Content>

