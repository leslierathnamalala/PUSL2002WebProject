<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogingFormForAll.aspx.cs" Inherits="PUSL2002WebProject.LogingFormForAll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
                    <asp:Button ID="Button_Login" runat="server" Text="Login" OnClick="Button_Login_Click" />
                </td>
                <td class="auto-style5">
        <asp:Label ID="Label1" runat="server" Text="" Visible="true" ></asp:Label >
                </td>
                <td class="auto-style5"></td>
            </tr>
        </table>
        </div>
        <a href="http://localhost:58476/Signup">create yours</a>
        </form>
</body>
</html>
