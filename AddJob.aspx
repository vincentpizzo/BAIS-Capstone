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

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT * FROM [Position_Posting]">
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" BackColor="White" BorderColor="#0066FF">
                    <EditItemTemplate>

                        
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        HawkID:
                        <asp:TextBox ID="HawkIDTextBox" runat="server" Text='<%# Bind("HawkID") %>' />
                        <br />
                        SemesterName:
                        <asp:TextBox ID="SemesterNameTextBox" runat="server" Text='<%# Bind("SemesterName") %>' />
                        <br />
                        MajorName:
                        <asp:TextBox ID="MajorNameTextBox" runat="server" Text='<%# Bind("MajorName") %>' />
                        <br />
                        CompanyName:
                        <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
                        <br />
                        CompanyCity:
                        <asp:TextBox ID="CompanyCityTextBox" runat="server" Text='<%# Bind("CompanyCity") %>' />
                        <br />
                        CompanyState:
                        <asp:TextBox ID="CompanyStateTextBox" runat="server" Text='<%# Bind("CompanyState") %>' />
                        <br />
                        PositionTitle:
                        <asp:TextBox ID="PositionTitleTextBox" runat="server" Text='<%# Bind("PositionTitle") %>' />
                        <br />
                        PositionDesc:
                        <asp:TextBox ID="PositionDescTextBox" runat="server" Text='<%# Bind("PositionDesc") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

                    </InsertItemTemplate>
                    <ItemTemplate>
                       
                        HawkID:
                        <asp:Label ID="HawkIDLabel" runat="server" Text='<%# Bind("HawkID") %>' />
                        <br />
                        SemesterName:
                        <asp:Label ID="SemesterNameLabel" runat="server" Text='<%# Bind("SemesterName") %>' />
                        <br />
                        MajorName:
                        <asp:Label ID="MajorNameLabel" runat="server" Text='<%# Bind("MajorName") %>' />
                        <br />
                        CompanyName:
                        <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Bind("CompanyName") %>' />
                        <br />
                        CompanyCity:
                        <asp:Label ID="CompanyCityLabel" runat="server" Text='<%# Bind("CompanyCity") %>' />
                        <br />
                        CompanyState:
                        <asp:Label ID="CompanyStateLabel" runat="server" Text='<%# Bind("CompanyState") %>' />
                        <br />
                        PositionTitle:
                        <asp:Label ID="PositionTitleLabel" runat="server" Text='<%# Bind("PositionTitle") %>' />
                        <br />
                        PositionDesc:
                        <asp:Label ID="PositionDescLabel" runat="server" Text='<%# Bind("PositionDesc") %>' />
                        <br />
                       
                    </ItemTemplate>
                </asp:FormView>
                <br />
    </div>

</body>
</html>
</asp:Content>


