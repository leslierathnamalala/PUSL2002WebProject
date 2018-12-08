<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffDetaiForm.aspx.cs" Inherits="PUSL2002WebProject.StaffDetaiForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <asp:Label ID="Label1" runat="server" Text="Enter Staff Detail"></asp:Label>
            <table style="width: 100%;">
                <tr>
                    <td><asp:Label ID="Fname" runat="server" Text="FirstName"></asp:Label> </td>
                    <td> <asp:TextBox ID="fnbox" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorfn" runat="server" ErrorMessage="This  is a Required field" ControlToValidate="fnbox" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Lname" runat="server" Text="LastName"></asp:Label> </td>
                    <td> <asp:TextBox ID="LnBox" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorln" runat="server" ErrorMessage="This is  a required field" ControlToValidate="LnBox" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Email" runat="server" Text="Email"></asp:Label> </td>
                    <td> <asp:TextBox ID="EBox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorE" runat="server" ErrorMessage="The email you entered is incorrect." ControlToValidate="EBox" ForeColor="Red"></asp:RegularExpressionValidator></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Dob" runat="server" Text="DoB"></asp:Label> </td>
                    <td> <asp:TextBox ID="DobBox" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatordob" runat="server" ErrorMessage="This is  a required field" ControlToValidate="DobBox" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="gen" runat="server" Text="Gender"></asp:Label> </td>
                    <td> <asp:TextBox ID="genBox" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorG" runat="server" ErrorMessage="This is  a required field" ControlToValidate="genBox" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="ID" runat="server" Text="StaffID"></asp:Label> </td>
                    <td> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorID" runat="server" ErrorMessage="This is  a required field" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="pw1" runat="server" Text="Password"></asp:Label> </td>
                    <td> <asp:TextBox ID="PW1Box" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorPW1" runat="server" ErrorMessage="This is  a required field" ControlToValidate="PW1Box" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="pw2" runat="server" Text="Confirm Password"></asp:Label> </td>
                    <td> <asp:TextBox ID="PW2Box" runat="server"></asp:TextBox></td>
                    <td> <asp:CompareValidator ID="CompareValidatorPW" runat="server" ErrorMessage="Mismatch" ControlToValidate="PW2Box" ForeColor="Red"></asp:CompareValidator></td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" Text="Save" />
        </div>
    </form>
</body>
</html>
