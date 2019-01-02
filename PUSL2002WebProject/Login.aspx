<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PUSL2002WebProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="Login.css" rel="stylesheet" />
  <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style2 {
            width: 50%;
        }
        .auto-style3 {
            width: 189px;
        }
        .auto-style4 {
            width: 189px;
            height: 30px;
        }
        .auto-style5 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Login Form</strong></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Username</td>
                <td>
                    <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td>
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button_Login" runat="server" Text="Login" />
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
        </table>
    </form>
</body>
</html>
