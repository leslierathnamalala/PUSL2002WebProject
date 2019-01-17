<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="incident.aspx.cs" Inherits="PUSL2002WebProject.incident" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="incident.css" rel="stylesheet" />
	<style type="text/css">
		.auto-style1 {
			margin-left: 44px;
		}
	</style>
</head>
<body>
	
    <div>
    <form id="form1" runat="server">
        <div class="ABC"> 
			<h1>Upload Your Photo</h1>
            <table>
                
                    <td>&nbsp;</td>
                <tr>   
                      <td>  <asp:Label ID="Label2" runat="server"  Text="Image" Font-Size="Larger"></asp:Label></td>
                   



                   

                      <td> <asp:TextBox ID="TextBox2" runat="server" Height="48px" Width="306px" CssClass="auto-style1"></asp:TextBox></td>
                </tr>
                    
             <tr>   
                                       <td>  <asp:Label ID="Label3" runat="server" Text="Discription" Font-Size="Larger"></asp:Label></td>
                                      <td> 
                                          <br />
                                          <asp:TextBox ID="TextBox1" runat="server" Height="48px" Width="306px" TextMode="MultiLine" CssClass="auto-style1"></asp:TextBox></td>
                      
                </tr>

                <tr>

                    <td>

                        <asp:Button ID="Button1" runat="server" Text="Upload" Height="44px" Width="105px" />
                    </td>
                </tr>
                    
                   
                    

            
                    

        </div>
       
        
             

            
            
        
    </form>
        
            
    
    <p>
        &nbsp;</p>
</body>
</html>
