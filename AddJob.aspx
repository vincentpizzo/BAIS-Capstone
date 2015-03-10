<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddJob.aspx.vb" Inherits="admin_" %>

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

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [StudentPlacement]">
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:FormView ID="FormView2" runat="server" DataKeyNames="PlacementID" DataSourceID="SqlDataSource1" DefaultMode="Insert" BackColor="White" BorderColor="#0066FF">
                    <EditItemTemplate>
                        
                        PlacementID:
                        <asp:Label ID="PlacementIDLabel1" runat="server" Text='<%# Eval("PlacementID") %>' />
                        <br />
                        PositionID:
                        <asp:TextBox ID="PositionIDTextBox" runat="server" Text='<%# Bind("PositionID") %>' />
                        <br />
                        StudentID:
                        <asp:TextBox ID="StudentIDTextBox" runat="server" Text='<%# Bind("StudentID") %>' />
                        <br />
                        CompanyID:
                        <asp:TextBox ID="CompanyIDTextBox" runat="server" Text='<%# Bind("CompanyID") %>' />
                        <br />
                        PositionTitleID:
                        <asp:TextBox ID="PositionTitleIDTextBox" runat="server" Text='<%# Bind("PositionTitleID") %>' />
                        <br />
                        SemesterID:
                        <asp:TextBox ID="SemesterIDTextBox" runat="server" Text='<%# Bind("SemesterID") %>' />
                        <br />
                        MajorID:
                        <asp:TextBox ID="MajorIDTextBox" runat="server" Text='<%# Bind("MajorID") %>' />
                        <br />
                        Internship/FullTime:
                        <asp:TextBox ID="Internship_FullTimeTextBox" runat="server" Text='<%# Bind("[Internship/FullTime]") %>' />
                        <br />
                        Paid[Y/N]:
                        <asp:TextBox ID="Paid_Y_N_TextBox" runat="server" Text='<%# Bind("[Paid[Y/N]]") %>' />
                        <br />
                        StartDate:
                        <asp:TextBox ID="StartDateTextBox" runat="server" Text='<%# Bind("StartDate") %>' />
                        <br />
                        EndDate:
                        <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        PositionID:
                        <asp:TextBox ID="PositionIDTextBox" runat="server" Text='<%# Bind("PositionID") %>' />
                        <br />
                        StudentID:
                        <asp:TextBox ID="StudentIDTextBox" runat="server" Text='<%# Bind("StudentID") %>' />
                        <br />
                        CompanyID:
                        <asp:TextBox ID="CompanyIDTextBox" runat="server" Text='<%# Bind("CompanyID") %>' />
                        <br />
                        PositionTitleID:
                        <asp:TextBox ID="PositionTitleIDTextBox" runat="server" Text='<%# Bind("PositionTitleID") %>' />
                        <br />
                        SemesterID:
                        <asp:TextBox ID="SemesterIDTextBox" runat="server" Text='<%# Bind("SemesterID") %>' />
                        <br />
                        MajorID:
                        <asp:TextBox ID="MajorIDTextBox" runat="server" Text='<%# Bind("MajorID") %>' />
                        <br />
                        Internship/FullTime:
                        <asp:TextBox ID="Internship_FullTimeTextBox" runat="server" Text='<%# Bind("[Internship/FullTime]") %>' />
                        <br />
                        Paid[Y/N]:
                        <asp:TextBox ID="Paid_Y_N_TextBox" runat="server" Text='<%# Bind("[Paid[Y/N]]") %>' />
                        <br />
                        StartDate:
                        <asp:TextBox ID="StartDateTextBox" runat="server" Text='<%# Bind("StartDate") %>' />
                        <br />
                        EndDate:
                        <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

                    </InsertItemTemplate>
                    <ItemTemplate>
                       
                        PlacementID:
                        <asp:Label ID="PlacementIDLabel" runat="server" Text='<%# Eval("PlacementID") %>' />
                        <br />
                        PositionID:
                        <asp:Label ID="PositionIDLabel" runat="server" Text='<%# Bind("PositionID") %>' />
                        <br />
                        StudentID:
                        <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Bind("StudentID") %>' />
                        <br />
                        CompanyID:
                        <asp:Label ID="CompanyIDLabel" runat="server" Text='<%# Bind("CompanyID") %>' />
                        <br />
                        PositionTitleID:
                        <asp:Label ID="PositionTitleIDLabel" runat="server" Text='<%# Bind("PositionTitleID") %>' />
                        <br />
                        SemesterID:
                        <asp:Label ID="SemesterIDLabel" runat="server" Text='<%# Bind("SemesterID") %>' />
                        <br />
                        MajorID:
                        <asp:Label ID="MajorIDLabel" runat="server" Text='<%# Bind("MajorID") %>' />
                        <br />
                        Internship/FullTime:
                        <asp:Label ID="Internship_FullTimeLabel" runat="server" Text='<%# Bind("[Internship/FullTime]") %>' />
                        <br />
                        Paid[Y/N]:
                        <asp:Label ID="Paid_Y_N_Label" runat="server" Text='<%# Bind("[Paid[Y/N]]") %>' />
                        <br />
                        StartDate:
                        <asp:Label ID="StartDateLabel" runat="server" Text='<%# Bind("StartDate") %>' />
                        <br />
                        EndDate:
                        <asp:Label ID="EndDateLabel" runat="server" Text='<%# Bind("EndDate") %>' />
                        <br />
                       
                    </ItemTemplate>
                </asp:FormView>
                <br />
    </div>

</body>
</html>
</asp:Content>


