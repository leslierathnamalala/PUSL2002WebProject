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
	top: 48%;
	left: 50%;
	position: absolute;
	transform: translate(-50%,-50%);
	box-sizing: border-box;
	padding: 70px 30px;
}
h1 {
	text-align: center;
	font-size: 28px;


    
         .auto-style1 {}


    </style>
</head>
<body>
    <form id="form1" runat="server">   
        <div class="ABC" style="border-style: solid; border-width: thick"> 
			<h1>Upload Your Photo</h1>
            <table>    
                <tr>   
                     <td>  <asp:Label ID="Label2" runat="server"  Text="Image" Font-Size="Larger"></asp:Label></td>
                      <td> <asp:TextBox ID="TextBox2" runat="server" Height="48px" Width="306px" CssClass="auto-style1"></asp:TextBox></td>
                </tr>
                 <tr>   
                     <td>  <asp:Label ID="Label3" runat="server" Text="Discription" Font-Size="Larger"></asp:Label></td>
                     <td> <asp:TextBox ID="TextBox1" runat="server" Height="291px" Width="423px" TextMode="MultiLine" CssClass="auto-style1"></asp:TextBox></td>
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
