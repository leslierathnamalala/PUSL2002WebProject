<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="captain account.aspx.cs" Inherits="PUSL2002WebProject.captain_account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:ListView ID="ListView1" runat="server" >
              <ItemTemplate>
                            <div>
                                <table>
                                    <tr>
                                        
                                        <td><asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%#"data:Image/jpeg;base32"+ Convert.ToBase64String ((byte[])Eval("ImageData")) %>' /></td>
                                        <td><p>"<%# Eval("Description")%>"</p></td>
                                    </tr>
                                    
                                </table>
                            </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GarbageConnectionString %>" SelectCommand="SELECT [ImageData], [Description], [Name], [Id] FROM [tblImages]"></asp:SqlDataSource>
    </form>
</body>
</html>
