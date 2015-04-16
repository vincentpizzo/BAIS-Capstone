<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddJob.aspx.vb" Inherits="AddJob" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Add Job</title>
    <link href="~/css/style.css" rel="stylesheet" />
</head>
<body>

    <br />
    <div id="MainInfo">

                Semester:
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <br />
                Major:<asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
                <br />
                Position Title:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                Description:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                Position Type:<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Full Time</asp:ListItem>
                    <asp:ListItem>Internship</asp:ListItem>
                </asp:RadioButtonList>
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
    </div>
    <div id="CompanyInfo">

        Company Information:<br />
        Name:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        Address:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        City:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        State:<asp:DropDownList ID="DropDownList3" runat="server">
        </asp:DropDownList>
        <br />
        Zip:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>

    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <br />

</body>
</html>
</asp:Content>


