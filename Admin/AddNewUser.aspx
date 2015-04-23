<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddNewUser.aspx.vb" Inherits="Admin_AddNewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ActiveStepIndex="1">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:WizardStep ID="UserProfile" runat="server" StepType="Step" Title="User Profile Settings:">

                       <table>
                <tr>
                    <td align="right">First Name:</td> <td align="left"> <asp:TextBox ID="TextBox1" runat="server" Columns="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right">Last Name:</td> <td align="left"> <asp:TextBox ID="TextBox2" runat="server" Columns="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right">City:</td> <td align="left"> <asp:TextBox ID="TextBox3" runat="server" Columns="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right">State:</td> <td align="left"> <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="sql_state" DataTextField="State:" DataValueField="StateAbbreviation"></asp:DropDownList></td>
                </tr>
            </table>

            </asp:WizardStep>
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
    <asp:SqlDataSource runat="server" 
    ID="sql_state" 
    ConnectionString="<%$ ConnectionStrings:dbo.StudentPlacementDB2 %>" 
    SelectCommand="SELECT [StateAbbreviation] FROM [State]"></asp:SqlDataSource>
    


</asp:Content>

