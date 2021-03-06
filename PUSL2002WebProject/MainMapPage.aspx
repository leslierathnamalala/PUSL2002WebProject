﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMapPage.aspx.cs" Inherits="PUSL2002WebProject.MainMapPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
         <title>Green World</title>
    <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="Resources/Menustyles.css">
   <script src="Resources/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>

    <style type="text/css">
        #maparea{width:83%;float:left}

        .left{width: 200px; height: 1100px ;background-image: url(Pictures/sideBar1.jpg);float: left}
		
		.box1{width: 160px; height: 180px; background-color: darkgray;opacity: 0.7;margin-left: 20px;padding-top: 10px}
		
		.box2{width: 160px; height: 180px; background-color: darkgray;opacity: 0.7;margin-left: 20px;margin-top: 7px}
		
		.box3{width: 160px; height: 180px; background-color: darkgray;opacity: 0.7;margin-left: 20px;margin-top: 7px}

        #googleMap{float:left}

        #Mbody {background-image:url(Sources/Doodle Back Wall.jpg)}

    </style>





</head>



</head>
<body>
    <!--This is the menu part -->

    <!--API AIzaSyBQNninyZTdg4dNCZ7WPSbY-s_n6yseAT8 -->
 
    



    <div id='cssmenu'>
<ul>
   <li class='active'><a href='#'>Home</a></li>
   <li><a href='#'>GTF Members</a></li>
   <li><a href='#'>Collection Spots</a></li>
   <li><a href='#'>Contact</a></li>
</ul>
</div>


    <form id="form1" runat="server">
         <div class="left" >
			<div class="box1">
				<center></center>
				
				
			</div>
			<div class="box2">
			
				<center></center>
			</div>
			<div class="box3">
			
				<center></center>
			</div>
			<div class="box3">
			
				<center></center>
			</div>
		</div>

        <div id="maparea">
            <div id="googleMap" style="width:100%;height:400px;" ></div>
            <script>
                function myMap() {
                    var mapProp = {
                        center: new google.maps.LatLng(6.9225376, 79.8526804),
                        zoom: 16,
                    };
                    var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
                }
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBQNninyZTdg4dNCZ7WPSbY-s_n6yseAT8&callback=myMap"></script>
        </div>

        

    </form>
</body>
</html>