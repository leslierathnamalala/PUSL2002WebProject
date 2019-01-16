<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imageuploadbyvol.aspx.cs" Inherits="PUSL2002WebProject.imageuploadbyvol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="Report an Incident"></asp:Label>
            <table style="width: 100%;">
                <tr>
                    <td> <asp:FileUpload ID="FileUpload1" runat="server" /></td> 
                </tr>
               
                <tr>
                    <td> <asp:Label ID="Label1" runat="server" Text="Your discription here"></asp:Label>
                    <br/> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                
                <tr>
                    <td><asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" /></td>
                    
                </tr>

                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink></td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
