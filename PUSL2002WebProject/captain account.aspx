<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="captain account.aspx.cs" Inherits="PUSL2002WebProject.captain_account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
         
         
         
        #list
        {
             border: 25px solid green;
             border-style: inset;
             border-width: 5px 7px 5px 7px;
             width: 600px;
             height: 100px;
             margin-top:20px;

               
        }
         #mapDiv 
         {
             width: 760px;
             height: 500px;
             float: left;
             border: 25px solid green;
             border-style: inset;
             border-width: 5px 7px 5px 7px;
             height: 720px;
             float: right;
         }
         #other
         {
            padding-top:10px;
            padding-left:5px;

            float:left;
        }
         </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="one" style="background-image:url(image/Back.jpeg); width: 100%; height: 1000px;">

          <div id="other">
              <asp:Label ID="Label1" runat="server" Text="Reported Incidents" ForeColor="White"></asp:Label>
              

           <asp:ListView ID="ListView1" runat="server" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" >
              <ItemTemplate>
                  <div id="list"  >
                       <table>
                          <tr> 
                             <td><asp:Image ID="Image1" runat="server" Height="100px" Width="200px" src='<%#String.Format("data:Image/jpg;base64,{0}", Convert.ToBase64String((byte[])Eval("ImageData"))) %>' /></td>
                              <td style="color: #FFFFFF"><p >"<%# Eval("Description")%>"</p></td>
                           </tr>                                  
                       </table>
                    </div>
               </ItemTemplate>
            </asp:ListView>
            </div>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GarbageConnectionString %>" SelectCommand="SELECT [ImageData], [Description], [Name], [Id] FROM [tblImages]"></asp:SqlDataSource>
      <div id="mapDiv">
           <div>
                <div id="dvMap" style="width: 760px; height: 716px">
           </div>
        </div>
      </div>
    </div>
        </form>
</body>
</html>
