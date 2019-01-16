<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GTFPage.aspx.cs" Inherits="PUSL2002WebProject.GTFPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome To the Green Task Force<br />
            <br />
            Report A Incident<br />
            <div style="width: 433px; height: 325px; margin-top: 0px">
                <br />
                Location<br />
                <br />
                Lon&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                Lat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                Description<div style="width: 371px; height: 135px">
                    <asp:TextBox ID="TextBox3" runat="server" Height="88px" TextMode="MultiLine" Width="346px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="26px" Text="Submit" />
                </div>
                <a href ="http://localhost:3424/Home/Index "> Home Page</a>
            </div>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
