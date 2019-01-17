<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Captain.aspx.cs" Inherits="PUSL2002WebProject.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> 
            <asp:ListView ID="ListView1" runat="server">
               <ItemTemplate>
                   <div class="list">
                       <table>
                           <tr>
                               <td><img src="<%#Eval("ImageData")%>"</td>
                               <td><p>"<%# Eval("Description")%>"</td>

                           </tr>
                       </table>
                   </div>
               </ItemTemplate>
            </asp:ListView> 
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GarbageConnectionString %>" SelectCommand="SELECT * FROM [tblImages]"></asp:SqlDataSource>
    </form>
</body>
</html>
