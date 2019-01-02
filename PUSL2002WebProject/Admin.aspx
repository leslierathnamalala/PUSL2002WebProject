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
            <asp:Button ID="Button1" runat="server" Text="Create Captain Account" /><br>
            <asp:Button ID="Button2" runat="server" Text="Create Staff member Account" />
        </div>
        <div>

        </div>
    </form>
</body>
</html>
