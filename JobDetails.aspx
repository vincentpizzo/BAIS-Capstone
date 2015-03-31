<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="JobDetails.aspx.vb" Inherits="JobDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceJobDetails" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" DeleteCommand=" SELECT studentplacement.placementid,
       semester.semestername,
       major.majorname,
       [position(new)].positiontitle,
       [position(new)].positiondescription,
       [position(new)].positiontype,
       skill.skilldescription,
       company.companyname,
       company.companyaddress,
       company.companycity,
       company.companystate,
       company.companyzip
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
WHERE 
placementid = @placementID" InsertCommand=" SELECT studentplacement.placementid,
       semester.semestername,
       major.majorname,
       [position(new)].positiontitle,
       [position(new)].positiondescription,
       [position(new)].positiontype,
       skill.skilldescription,
       company.companyname,
       company.companyaddress,
       company.companycity,
       company.companystate,
       company.companyzip
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
WHERE 
placementid = @placementID" SelectCommand=" SELECT studentplacement.placementid,
       semester.semestername,
       major.majorname,
       [position(new)].positiontitle,
       [position(new)].positiondescription,
       [position(new)].positiontype,
       skill.skilldescription,
       company.companyname,
       company.companyaddress,
       company.companycity,
       company.companystate,
       company.companyzip
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
WHERE 
placementid = @placementID" UpdateCommand=" SELECT studentplacement.placementid,
       semester.semestername,
       major.majorname,
       [position(new)].positiontitle,
       [position(new)].positiondescription,
       [position(new)].positiontype,
       skill.skilldescription,
       company.companyname,
       company.companyaddress,
       company.companycity,
       company.companystate,
       company.companyzip
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
WHERE 
placementid = @placementID">
    <DeleteParameters>
        <asp:Parameter Name="placementID" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="placementID" />
    </InsertParameters>
    <SelectParameters>
        <asp:QueryStringParameter Name="placementID" QueryStringField="placementID" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="placementID" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="placementid" DataSourceID="SqlDataSourceJobDetails" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="placementid" HeaderText="PlacementID" InsertVisible="False" ReadOnly="True" SortExpression="placementid" />
        <asp:BoundField DataField="semestername" HeaderText="Semester" SortExpression="semestername" />
        <asp:BoundField DataField="majorname" HeaderText="Major" SortExpression="majorname" />
        <asp:BoundField DataField="positiontitle" HeaderText="Job Title" SortExpression="positiontitle" />
        <asp:BoundField DataField="positiondescription" HeaderText="Job Description" SortExpression="positiondescription" />
        <asp:BoundField DataField="positiontype" HeaderText="Job Type" SortExpression="positiontype" />
        <asp:BoundField DataField="skilldescription" HeaderText="Skills" SortExpression="skilldescription" />
        <asp:BoundField DataField="companyname" HeaderText="Company Name" SortExpression="companyname" />
        <asp:BoundField DataField="companyaddress" HeaderText="Company Address" SortExpression="companyaddress" />
        <asp:BoundField DataField="companycity" HeaderText="Company City" SortExpression="companycity" />
        <asp:BoundField DataField="companystate" HeaderText="Company State" SortExpression="companystate" />
        <asp:BoundField DataField="companyzip" HeaderText="Company Zipcode" SortExpression="companyzip" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
</asp:DetailsView>
</asp:Content>

