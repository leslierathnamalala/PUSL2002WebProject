<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="PUSL2002WebProject.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
	    #one {    max-width: 400px;
            border: 25px solid green;
            border-style: inset;
            border-width: 5px 7px 5px 7px;
            margin-left:500px;
            margin-top:100px;
            padding: 25px;
            background-color: #ffffff;
            
	    }
	</style>
  
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h1>Sign Up Here</h1></center> 
      
			<table class="auto-style1" style="background-color: #999999" id="one">
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
						<asp:Button ID="Button1" runat="server" Text="Submit" />
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
