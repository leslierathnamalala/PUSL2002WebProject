﻿
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffDetaiForm.aspx.cs" Inherits="PUSL2002WebProject.StaffDetaiForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
      
        #tabledata {
            max-width: 400px;
            border: 25px solid green;
            border-style: inset;
            border-width: 5px 7px 5px 7px;
            margin-left:500px;
            margin-top:100px;
            padding: 25px;
            background-color: #ffffff;
            
            
            
        }
        #Label1 {
            margin-left:450px;
                margin-top:200px;
                margin-bottom:100px;
                font-size: 60px;
                
        }
        #Button1 {
            margin-left:1000px;
            margin-top:10px;
            margin-bottom:20px;
            background-color:aliceblue;
             border: 25px solid green;
            border-style: inset;
            border-width: 5px 7px 5px 7px; 
            padding: 15px 32px;
        }

         #Button2 {
            margin-left:1200;
            margin-top:10px;
            margin-bottom:20px;
            background-color:aliceblue;
             border: 25px solid green;
          
            border-style: inset;
            border-width: 5px 7px 5px 7px; 
            padding: 15px 32px;
        }

</style>    
</head>
<body>
    <form id="form1" runat="server">
                <div style="background-image:url(image/Back.jpeg)">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="Label1" runat="server" Text="Enter Staff Details" ForeColor="White"></asp:Label>
            <table style="width: 100%;" id="tabledata">
                <tr>
                    <td><asp:Label ID="Fname" runat="server" Text="FirstName"></asp:Label> </td>
                    <td> <asp:TextBox ID="fnbox" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorfn" runat="server" ErrorMessage="This  is a Required field" ControlToValidate="fnbox" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Lname" runat="server" Text="LastName"></asp:Label> </td>
                    <td> <asp:TextBox ID="LnBox" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorln" runat="server" ErrorMessage="This is  a required field" ControlToValidate="LnBox" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Email" runat="server" Text="Email"></asp:Label> </td>
                    <td> <asp:TextBox ID="EBox" runat="server" TextMode="Email"></asp:TextBox></td>
                    
                </tr>
                 <tr>
                    <td><asp:Label ID="Dob" runat="server" Text="DoB"></asp:Label> </td>
                    <td> <asp:TextBox ID="DobBox" runat="server" TextMode="Date"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatordob" runat="server" ErrorMessage="This is  a required field" ControlToValidate="DobBox" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="gen" runat="server" Text="Gender"></asp:Label> </td>
                    <td> <asp:TextBox ID="genBox" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorG" runat="server" ErrorMessage="This is  a required field" ControlToValidate="genBox" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="ID" runat="server" Text="StaffID"></asp:Label> </td>
                    <td> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorID" runat="server" ErrorMessage="This is  a required field" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="pw1" runat="server" Text="Password"></asp:Label> </td>
                    <td> <asp:TextBox ID="PW1Box" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorPW1" runat="server" ErrorMessage="This is  a required field" ControlToValidate="PW1Box" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="pw2" runat="server" Text="Confirm Password"></asp:Label> </td>
                    <td> <asp:TextBox ID="PW2Box" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td> <asp:CompareValidator ID="CompareValidatorPW" runat="server" ErrorMessage="Mismatch" ControlToValidate="PW2Box" ForeColor="Red" ControlToCompare="PW1Box"></asp:CompareValidator></td>
                </tr>
            </table>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GarbageConnectionString %>" SelectCommand="SELECT * FROM [CaptainStaff]"></asp:SqlDataSource>
              <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
