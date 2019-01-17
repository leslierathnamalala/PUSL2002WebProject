<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imageuploadbyvol.aspx.cs" Inherits="PUSL2002WebProject.imageuploadbyvol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
         #incident
         {
              max-width: 400px;
            border: 25px solid green;
            border-style: inset;
            border-width: 5px 7px 5px 7px;
            margin-left:50px;
            margin-top:50px;
            opacity:3.0; 
            filter:alpha(opacity=100);
            padding: 25px;
            background-color: #ffffff;
            
         }
         #Label2 {
          font-size: 20px;
         }
         #Label4 
         {
              margin-left:450px;
                margin-top:200px;
                margin-bottom:100px;
                font-size: 60px;
         }
         #one{
             margin-top:50px;
             border: 25px solid green;
            border-style: inset;
            border-width: 5px 7px 5px 7px;
            margin-left:400px;
         }
         .auto-style1 {
             height: 29px;
         }
         </style>
</head>
<body>
    <form id="form1" runat="server">
       <div id="two" style="background-image:url(image/Back.jpeg); width: 100%; height: 1000px;">
                        <asp:Label ID="Label4" runat="server" Text="Report your Incident Here." ForeColor="White"></asp:Label><br>

        <div id ="one" style="overflow: scroll; width: 50%; height: 50%; top: 100px; right: 25%; bottom: 100px; left: 25%; font-weight: bold; color: #FFFFFF;">
           <center> <asp:Label ID="Label2" runat="server" Text="upload an image" ForeColor="White"></asp:Label></center>
            <table id="incident" style="width: 100%; background-color: #000000;">
                <tr>
                    <td class="auto-style1"> <asp:FileUpload ID="FileUpload1" runat="server" Height="138px" Width="431px" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GarbageConnectionString %>" SelectCommand="SELECT * FROM [tblImages]"></asp:SqlDataSource>
                    </td> 
                </tr>

                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Only files of type(.jpg,.png,.gif and .bmp)can be uploaded"></asp:Label></td> 
                </tr>

                <tr>
                    <td> <asp:Label ID="Label1" runat="server" Text="Your discription here"></asp:Label>
                    <br/> <asp:TextBox ID="TextBox1" runat="server" Height="214px" Width="460px" TextMode="MultiLine"></asp:TextBox></td>
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
     </div>
    </form>
</body>
</html>
