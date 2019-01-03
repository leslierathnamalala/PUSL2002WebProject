<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PUSL2002WebProject.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
         <style type="text/css">

    .auto-style2 {
	width: 400px;
	height: 420px;
	background: #800000;
	color: #000000;
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%,-50%);
	box-sizing: border-box;
	padding: 70px 30px;
}
.auto-style3 {
	text-align: center;
}
.auto-style4 {
	text-align: center;
}
 </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center> <strong style="font-size: xx-large">Login Form</strong></center>
        <table class="auto-style2" style="border: thick solid #000000; background-color: #C0C0C0">
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
        </div>
    </form>
</body>
</html>
