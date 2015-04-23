<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddNewUser.aspx.vb" Inherits="Admin_AddNewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sql_state" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacement %>" SelectCommand="SELECT [StateAbbreviation] FROM [State]"></asp:SqlDataSource>
    <br />
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ActiveStepIndex="1">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:WizardStep ID="UserProfile" runat="server" StepType="Step" Title="User Profile Settings:">
            </asp:WizardStep>
            <asp:CompleteWizardStep runat="server" />
            <table>
                <tr>
                    <td align="right">First Name:</td> <td align="left"> <asp:TextBox ID="tb_FirstName" runat="server" Columns="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right">Last Name:</td> <td align="left"> <asp:TextBox ID="tb_LastName" runat="server" Columns="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right">City:</td> <td align="left"> <asp:TextBox ID="tb_City" runat="server" Columns="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right">State:</td> <td align="left"> <asp:DropDownList ID="ddl_State" runat="server" DataSource="sql_state" DataTextField="State:" DataValueField="StateAbbreviation"></asp:DropDownList></td>
                </tr>
            </table>





        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

