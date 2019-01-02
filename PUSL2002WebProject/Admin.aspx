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

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="one">
            Create Accounts<br />
            <asp:Button ID="Button1" runat="server" Text="Create Captain Account" OnClick="Button1_Click" /><br>
            <asp:Button ID="Button2" runat="server" Text="Create Staff member Account" OnClick="Button2_Click" />
            <br />
        <div id="two" style="padding: 20px; margin: 50px; border-style: solid; border-width: thick; width: 50%; height: 100%; right: -8px; position: relative; top: 5px; background-color: #336600; text-decoration: blink; font-weight: bold;">

            News Upload<br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Ttile"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Body"></asp:Label>
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
