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
            float:left;
       
        }
        #two {margin-top:0px;
              
             border: 25px solid green;
            border-style: inset;
            border-width: 5px 7px 5px 7px;
            
            
        }
        #mapDiv{
            width: 760px; height: 500px;float:left;border: 25px solid green;
            border-style: inset;
            border-width: 5px 7px 5px 7px;
            height:720px;
            float:right;
            
        }
        #other{

            float:left;
        }
    </style>
</head>

  
      

<body>
    <form id="form1" runat="server">
        <div id="one" style="background-image:url(image/Back.jpeg); width: 100%; height: 1000px;">
            <br />
            <br>
           <div id="other">
                <div id ="first" style="padding: 20px; color: #FFFFFF; width: 500px">
                Create Accounts<br />
            <asp:Button ID="Button1" runat="server" Text="Create Captain Account" OnClick="Button1_Click" BorderColor="White" Width="372px" />
                <br />
            <asp:Button ID="Button2" runat="server" Text="Create Staff member Account" OnClick="Button2_Click" BorderColor="White" Width="370px" />
            </div>
            <br />
        &nbsp;<div id="two" style="padding: 20px; color: #FFFFFF; width: 500px; height: 450px;">

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
            

        </div>
           </div>
            <div id="mapDiv">
                 <div>
             <div id="dvMap" style="width: 760px; height: 716px">
        </div>
    </div>

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBQNninyZTdg4dNCZ7WPSbY-s_n6yseAT8"></script>
    <script type="text/javascript">
        var markers = <%=this.Connect()%>;
        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 13,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            for (i = 0; i < markers.length; i++) {
                var data = markers[i]
                var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: data.title
                });
                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent(data.description);
                        infoWindow.open(map, marker);
                    });
                })(marker, data);
            }
        }
    </script>
        </div>

            <div id="mapDiv" style="overflow: scroll">

            </div>
        </div>
        
    </form>
</body>
</html>
