<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="PUSL2002WebProject.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="Signup.css" rel="stylesheet" />
<style type="text/css">
		.auto-style1 {
			width: 30%;
		}
		.auto-style2 {
			width: 219px;
		}
		.auto-style3 {
			width: 219px;
			height: 30px;
		}
		.auto-style4 {
			height: 30px;
		}
	.auto-style5 {
		width: 219px;
		height: 76px;
	}
	.auto-style6 {
		height: 76px;
	}
	</style>
</head>
<body style="height: 100px">
    <form id="form1" runat="server">
        <div>
			<h1>Sign Up Here</h1>
			<table class="auto-style1">
				<tr>
					<td class="auto-style2">
						<asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style2">
						<asp:TextBox ID="TextBoxUN" runat="server" Width="162px"></asp:TextBox>
					</td>
					<td>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">
						<asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style2">
						<asp:TextBox ID="TextBoxEM" runat="server" Width="162px"></asp:TextBox>
					</td>
					<td>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEM" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
						<br />
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEM" ErrorMessage="You must enter a valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">
						<asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style2">
						<asp:TextBox ID="TextBoxPW" runat="server" TextMode="Password" Width="162px"></asp:TextBox>
					</td>
					<td>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPW" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">
						<asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style5">
						<asp:TextBox ID="TextBoxCP" runat="server" TextMode="Password" Width="162px"></asp:TextBox>
					</td>
					<td class="auto-style6">
						<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxCP" ErrorMessage="Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
						<br />
						<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPW" ControlToValidate="TextBoxCP" ErrorMessage="Both passwords must be same" ForeColor="Red"></asp:CompareValidator>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">
						<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style3">
						&nbsp;</td>
					<td class="auto-style4"></td>
				</tr>
			</table>
        </div>
        
    </form>
</body>
</html>
