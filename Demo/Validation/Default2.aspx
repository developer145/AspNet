<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 50%;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 23px;
            width: 221px;
        }
        .style4
        {
            width: 221px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style3">
                Name</td>
            <td class="style2">
                <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="NameTextBox" ErrorMessage="Please enter value for name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Email</td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="EmailTextBox" Display="Dynamic" 
                    ErrorMessage="Please enter email address">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Confirm Email</td>
            <td>
                <asp:TextBox ID="ConfirmEmailTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ConfirmEmailTextBox" Display="Dynamic" 
                    ErrorMessage="Please confirm email address">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="ConfirmEmailTextBox" Display="Dynamic" 
                    ErrorMessage="Please enter correct email address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="EmailTextBox" ControlToValidate="ConfirmEmailTextBox" 
                    Display="Dynamic" ErrorMessage="Email must match">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Age</td>
            <td>
                <asp:TextBox ID="AgeTextBox" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="AgeTextBox" ErrorMessage="Age must between 18 and 100" 
                    MaximumValue="100" MinimumValue="18" Type="Integer">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Date of Birth</td>
            <td>
                <asp:TextBox ID="DobTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DobTextBox" ErrorMessage="Please enter date of birth">*</asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
