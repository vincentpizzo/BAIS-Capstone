<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.PlacementDB2 %>" SelectCommand="SELECT StudentPlacement.StudentID AS Expr1, Company.CompanyID, StudentPlacement.SemesterID, Major.MajorID FROM Skill INNER JOIN Position ON Skill.SkillID = Position.SkillID INNER JOIN StudentPlacement ON Position.PositionID = StudentPlacement.PositionID INNER JOIN Student ON StudentPlacement.StudentID = Student.StudentID INNER JOIN Company INNER JOIN State ON Company.StateID = State.StateID ON StudentPlacement.CompanyID = Company.CompanyID INNER JOIN Semester ON StudentPlacement.SemesterID = Semester.SemesterID INNER JOIN Major ON StudentPlacement.MajorID = Major.MajorID"></asp:SqlDataSource>
    <asp:Label ID="lbl_search" runat="server" Text="Search"></asp:Label>
    <asp:TextBox ID="tb_search" runat="server"></asp:TextBox>
    <asp:Button ID="btn_search" runat="server" Text="Submit" />

</asp:Content>

