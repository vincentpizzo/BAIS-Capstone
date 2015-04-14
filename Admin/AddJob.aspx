<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddJob.aspx.vb" Inherits="AddJob" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Add Job</title>
    <link href="~/css/style.css" rel="stylesheet" />
</head>
<body>

    <div>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT        dbo.StudentPlacement.PlacementID, dbo.Semester.SemesterName, dbo.Major.MajorName, dbo.[Position(New)].PositionTitle, dbo.[Position(New)].PositionDescription, dbo.[Position(New)].PositionType, 
                         dbo.Skill.SkillDescription, dbo.Company.CompanyName, dbo.Company.CompanyAddress, dbo.Company.CompanyCity, dbo.Company.CompanyState, dbo.Company.CompanyZip
FROM            dbo.[Position(New)] INNER JOIN
                         dbo.Skill ON dbo.[Position(New)].SkillID = dbo.Skill.SkillID INNER JOIN
                         dbo.StudentPlacement ON dbo.[Position(New)].PositionID = dbo.StudentPlacement.PositionID INNER JOIN
                         dbo.Company ON dbo.StudentPlacement.CompanyID = dbo.Company.CompanyID INNER JOIN
                         dbo.Major ON dbo.StudentPlacement.MajorID = dbo.Major.MajorID INNER JOIN
                         dbo.Semester ON dbo.StudentPlacement.SemesterID = dbo.Semester.SemesterID INNER JOIN
                         dbo.aspnet_Users ON dbo.StudentPlacement.UserName = dbo.aspnet_Users.UserName" DeleteCommand="SELECT        dbo.StudentPlacement.PlacementID, dbo.Semester.SemesterName, dbo.Major.MajorName, dbo.[Position(New)].PositionTitle, dbo.[Position(New)].PositionDescription, dbo.[Position(New)].PositionType, 
                         dbo.Skill.SkillDescription, dbo.Company.CompanyName, dbo.Company.CompanyAddress, dbo.Company.CompanyCity, dbo.Company.CompanyState, dbo.Company.CompanyZip
FROM            dbo.[Position(New)] INNER JOIN
                         dbo.Skill ON dbo.[Position(New)].SkillID = dbo.Skill.SkillID INNER JOIN
                         dbo.StudentPlacement ON dbo.[Position(New)].PositionID = dbo.StudentPlacement.PositionID INNER JOIN
                         dbo.Company ON dbo.StudentPlacement.CompanyID = dbo.Company.CompanyID INNER JOIN
                         dbo.Major ON dbo.StudentPlacement.MajorID = dbo.Major.MajorID INNER JOIN
                         dbo.Semester ON dbo.StudentPlacement.SemesterID = dbo.Semester.SemesterID INNER JOIN
                         dbo.aspnet_Users ON dbo.StudentPlacement.UserName = dbo.aspnet_Users.UserName" InsertCommand="SELECT        dbo.StudentPlacement.PlacementID, dbo.Semester.SemesterName, dbo.Major.MajorName, dbo.[Position(New)].PositionTitle, dbo.[Position(New)].PositionDescription, dbo.[Position(New)].PositionType, 
                         dbo.Skill.SkillDescription, dbo.Company.CompanyName, dbo.Company.CompanyAddress, dbo.Company.CompanyCity, dbo.Company.CompanyState, dbo.Company.CompanyZip
FROM            dbo.[Position(New)] INNER JOIN
                         dbo.Skill ON dbo.[Position(New)].SkillID = dbo.Skill.SkillID INNER JOIN
                         dbo.StudentPlacement ON dbo.[Position(New)].PositionID = dbo.StudentPlacement.PositionID INNER JOIN
                         dbo.Company ON dbo.StudentPlacement.CompanyID = dbo.Company.CompanyID INNER JOIN
                         dbo.Major ON dbo.StudentPlacement.MajorID = dbo.Major.MajorID INNER JOIN
                         dbo.Semester ON dbo.StudentPlacement.SemesterID = dbo.Semester.SemesterID INNER JOIN
                         dbo.aspnet_Users ON dbo.StudentPlacement.UserName = dbo.aspnet_Users.UserName" UpdateCommand="SELECT        dbo.StudentPlacement.PlacementID, dbo.Semester.SemesterName, dbo.Major.MajorName, dbo.[Position(New)].PositionTitle, dbo.[Position(New)].PositionDescription, dbo.[Position(New)].PositionType, 
                         dbo.Skill.SkillDescription, dbo.Company.CompanyName, dbo.Company.CompanyAddress, dbo.Company.CompanyCity, dbo.Company.CompanyState, dbo.Company.CompanyZip
FROM            dbo.[Position(New)] INNER JOIN
                         dbo.Skill ON dbo.[Position(New)].SkillID = dbo.Skill.SkillID INNER JOIN
                         dbo.StudentPlacement ON dbo.[Position(New)].PositionID = dbo.StudentPlacement.PositionID INNER JOIN
                         dbo.Company ON dbo.StudentPlacement.CompanyID = dbo.Company.CompanyID INNER JOIN
                         dbo.Major ON dbo.StudentPlacement.MajorID = dbo.Major.MajorID INNER JOIN
                         dbo.Semester ON dbo.StudentPlacement.SemesterID = dbo.Semester.SemesterID INNER JOIN
                         dbo.aspnet_Users ON dbo.StudentPlacement.UserName = dbo.aspnet_Users.UserName">
                </asp:SqlDataSource>

                <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" BackColor="#FFCC00" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="3" DataKeyNames="PlacementID" GridLines="Horizontal">
                    <EditItemTemplate>

                        
                        PlacementID:
                        <asp:Label ID="PlacementIDLabel1" runat="server" Text='<%# Eval("PlacementID") %>' />
                        <br />
                        SemesterName:
                        <asp:TextBox ID="SemesterNameTextBox" runat="server" Text='<%# Bind("SemesterName") %>' />
                        <br />
                        MajorName:
                        <asp:TextBox ID="MajorNameTextBox" runat="server" Text='<%# Bind("MajorName") %>' />
                        <br />
                        PositionTitle:
                        <asp:TextBox ID="PositionTitleTextBox" runat="server" Text='<%# Bind("PositionTitle") %>' />
                        <br />
                        PositionDescription:
                        <asp:TextBox ID="PositionDescriptionTextBox" runat="server" Text='<%# Bind("PositionDescription") %>' />
                        <br />
                        PositionType:
                        <asp:TextBox ID="PositionTypeTextBox" runat="server" Text='<%# Bind("PositionType") %>' />
                        <br />
                        SkillDescription:
                        <asp:TextBox ID="SkillDescriptionTextBox" runat="server" Text='<%# Bind("SkillDescription") %>' />
                        <br />
                        CompanyName:
                        <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
                        <br />
                        CompanyAddress:
                        <asp:TextBox ID="CompanyAddressTextBox" runat="server" Text='<%# Bind("CompanyAddress") %>' />
                        <br />
                        CompanyCity:
                        <asp:TextBox ID="CompanyCityTextBox" runat="server" Text='<%# Bind("CompanyCity") %>' />
                        <br />
                        CompanyState:
                        <asp:TextBox ID="CompanyStateTextBox" runat="server" Text='<%# Bind("CompanyState") %>' />
                        <br />
                        CompanyZip:
                        <asp:TextBox ID="CompanyZipTextBox" runat="server" Text='<%# Bind("CompanyZip") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

                        
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <InsertItemTemplate>
                        SemesterName:
                        <asp:TextBox ID="SemesterNameTextBox" runat="server" Text='<%# Bind("SemesterName") %>' />
                        <br />
                        MajorName:
                        <asp:TextBox ID="MajorNameTextBox" runat="server" Text='<%# Bind("MajorName") %>' />
                        <br />
                        PositionTitle:
                        <asp:TextBox ID="PositionTitleTextBox" runat="server" Text='<%# Bind("PositionTitle") %>' />
                        <br />
                        PositionDescription:
                        <asp:TextBox ID="PositionDescriptionTextBox" runat="server" Text='<%# Bind("PositionDescription") %>' />
                        <br />
                        PositionType:
                        <asp:TextBox ID="PositionTypeTextBox" runat="server" Text='<%# Bind("PositionType") %>' />
                        <br />
                        SkillDescription:
                        <asp:TextBox ID="SkillDescriptionTextBox" runat="server" Text='<%# Bind("SkillDescription") %>' />
                        <br />
                        CompanyName:
                        <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
                        <br />
                        CompanyAddress:
                        <asp:TextBox ID="CompanyAddressTextBox" runat="server" Text='<%# Bind("CompanyAddress") %>' />
                        <br />
                        CompanyCity:
                        <asp:TextBox ID="CompanyCityTextBox" runat="server" Text='<%# Bind("CompanyCity") %>' />
                        <br />
                        CompanyState:
                        <asp:TextBox ID="CompanyStateTextBox" runat="server" Text='<%# Bind("CompanyState") %>' />
                        <br />
                        CompanyZip:
                        <asp:TextBox ID="CompanyZipTextBox" runat="server" Text='<%# Bind("CompanyZip") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                       

                    </InsertItemTemplate>
                    <ItemTemplate>
                       
                        PlacementID:
                        <asp:Label ID="PlacementIDLabel" runat="server" Text='<%# Eval("PlacementID") %>' />
                        <br />
                        SemesterName:
                        <asp:Label ID="SemesterNameLabel" runat="server" Text='<%# Bind("SemesterName") %>' />
                        <br />
                        MajorName:
                        <asp:Label ID="MajorNameLabel" runat="server" Text='<%# Bind("MajorName") %>' />
                        <br />
                        PositionTitle:
                        <asp:Label ID="PositionTitleLabel" runat="server" Text='<%# Bind("PositionTitle") %>' />
                        <br />
                        PositionDescription:
                        <asp:Label ID="PositionDescriptionLabel" runat="server" Text='<%# Bind("PositionDescription") %>' />
                        <br />
                        PositionType:
                        <asp:Label ID="PositionTypeLabel" runat="server" Text='<%# Bind("PositionType") %>' />
                        <br />
                        SkillDescription:
                        <asp:Label ID="SkillDescriptionLabel" runat="server" Text='<%# Bind("SkillDescription") %>' />
                        <br />
                        CompanyName:
                        <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Bind("CompanyName") %>' />
                        <br />
                       
                        CompanyAddress:
                        <asp:Label ID="CompanyAddressLabel" runat="server" Text='<%# Bind("CompanyAddress") %>' />
                        <br />
                        CompanyCity:
                        <asp:Label ID="CompanyCityLabel" runat="server" Text='<%# Bind("CompanyCity") %>' />
                        <br />
                        CompanyState:
                        <asp:Label ID="CompanyStateLabel" runat="server" Text='<%# Bind("CompanyState") %>' />
                        <br />
                        CompanyZip:
                        <asp:Label ID="CompanyZipLabel" runat="server" Text='<%# Bind("CompanyZip") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                       
                    </ItemTemplate>
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                </asp:FormView>
                 <br />
    </div>

</body>
</html>
</asp:Content>


