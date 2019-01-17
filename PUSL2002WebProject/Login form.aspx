<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login form.aspx.cs" Inherits="PUSL2002WebProject.Login_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                   <asp:Label ID="Label3" runat="server" Text="Loggin Form"></asp:Label>


        
        <table>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></tb>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1 ErrorMessage="Please enter Username" ForeColor="Red"></asp:RequiredFieldValidator></td>
                
            </tr>
            <tr>              
                <td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></tb>
                <td> <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" Text="Login" Width="80px" />
                </td>
            </tr>
            
        </table>
        </div>
        
    </form>
</body>
</html>
