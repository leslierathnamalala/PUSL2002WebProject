<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="PUSL2002WebProject.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Button1 {
            margin:10px 30px 10px 30px;
            background-color:cadetblue;
            border: solid black;
            color: black;
            padding: 15px 32px;
        }
         #Button2 {
            margin:10px 30px 10px 30px;
            background-color:cadetblue;
            border: solid black;
            color: black;
            padding: 15px 32px;
        }
        #first {
             border: 25px solid green;
            border-style: inset;
            border-width: 5px 7px 5px 7px;
       
        }
        #two {
             border: 25px solid green;
            border-style: inset;
            border-width: 5px 7px 5px 7px;
        }
    </style>
</head>

  
      

<body>
    <form id="form1" runat="server">
        <div id="one" style="background-image:url(image/Back.jpeg); width: 100%; height: 100%;">
            <br />
            <br>
            <div id ="first" style="padding: 20px; color: #FFFFFF; width: 45%">
                Create Accounts<br />
            <asp:Button ID="Button1" runat="server" Text="Create Captain Account" OnClick="Button1_Click" BorderColor="White" Width="372px" />
                <br />
            <asp:Button ID="Button2" runat="server" Text="Create Staff member Account" OnClick="Button2_Click" BorderColor="White" Width="370px" />
            </div>
            <br />
        &nbsp;<div id="two" style="padding: 20px; color: #FFFFFF; width: 45%; height: 35%;">

            News Upload<br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Ttile" ForeColor="White"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Body" ForeColor="White"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="#003300" BorderStyle="Solid" BorderWidth="3px" ForeColor="#99FF33" Height="171px" TextMode="MultiLine" Width="420px"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Submit" Width="91px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </div>
        </div>
    </form>
</body>
</html>
