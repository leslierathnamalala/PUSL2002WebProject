<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="PUSL2002WebProject.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
    .ABC {
	width: 510px;
	height: 420px;
	background: #C0C0C0;
	color: #000000;
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%,-50%);
	box-sizing: border-box;
	padding: 70px 30px;
}
h1 {
	text-align: center;
	font-size: 28px;


    </style>
</head>
<body>
    <form id="form1" runat="server">   
        <div class="ABC"> 
			<h1>Upload Your Photo</h1>
            <table>    
                <tr>   
                     <td>  <asp:Label ID="Label2" runat="server"  Text="Image" Font-Size="Larger"></asp:Label></td>
                      <td> <asp:TextBox ID="TextBox2" runat="server" Height="48px" Width="306px" CssClass="auto-style1"></asp:TextBox></td>
                </tr>
                 <tr>   
                     <td>  <asp:Label ID="Label3" runat="server" Text="Discription" Font-Size="Larger"></asp:Label></td>
                     <td> <asp:TextBox ID="TextBox1" runat="server" Height="48px" Width="306px" TextMode="MultiLine" CssClass="auto-style1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Upload" Height="44px" Width="105px" />
                    </td>
                </tr>
        </div>
       </form>       
</body>
</html>
