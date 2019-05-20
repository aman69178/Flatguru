<%-- 
    Document   : maplocation
    Created on : Apr 3, 2019, 6:45:13 PM
    Author     : Aman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
   <head>
       <style>
    
 .navbar {
  background-color: #000033;
  width: 100%;
  height: 234px;
  }
  
  .td{
      width: 110px;
      padding-left:20px;
      position:relative;
      top:55px;
      padding-right: 20px;
       }

       
       
.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px; 
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: #000033;
  font-family: inherit;
  margin: 0;
  position: relative;
  }

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: #000033;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: white;
   text-decoration: none;
  display: block;
  text-align: left;
  background-color: #000033
}

.dropdown-content a:hover {
  background-color: white;
  color:black;
}

.dropdown:hover .dropdown-content {
  display: block;
}
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  padding-top: 6px;
    cursor: pointer;
  font-size: 18px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
   color: white;
   background-color: #000033;
    position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
    padding-top: 10px;
  position: absolute;
  top: 5px;
  left: 5px;
  height: 14px;
  width: 25px;
  background-color:white;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #000033
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  display: inline-block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
label{
    color:black;
    background-color: #000033
}

.button {
  background-color:#000033;
  border: none;
  color: white;
  padding: 13px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  cursor: pointer;
  margin-top: 110px;
  
}



.button:focus{
    background-color: white;
    color:black;
    opacity: 1;
}

.tagline{
    height: 100px;
    font-size: 26px;
    font-family: sans-serif
}
.pg{
 margin-top: 12px;  
}



  

    
</style>
       
     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyARbEBUNSIVYgKaVXJcD3-s7Un2YYY0JTk"></script>

      
   </head>
   
   <body onload = "loadMap()">
       
        <div style="background-color:#000033;" class="navbar"  >
        <img src="logoo.png" width="150" height="120" style="position:relative;left:620px;top:17px;" />
        <font class="tagline" style="color:#f7f7f7;  position: relative;left:350px;top:42px;" >
        STOP EXISTING START LIVING</font>
        <table style="position:relative;left:280px;" >
        <tr>
           
             
    <td class="td">
         <div class="dropdown"  >
      <button class="dropbtn">BUDGET
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      
        <label class="container" style="color: white;">0-10K
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
         <label class="container" style="color: white;">10-20K
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
         <label class="container" style="color: white;">20-30K
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
         <label class="container" style="color: white;">30-40K
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
    </div></div> </td>
    <td class="td">
         <div class="dropdown"  >
      <button class="dropbtn">ACCOMODATION
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <label class="container" style="color: white;">Single
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
        <label class="container" style="color: white;">Double
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
        <label class="container" style="color: white;">Triple
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
        <label class="container" style="color: white;">Dorm
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
   
    </div></div> </td>
    <td class="td">
         <div class="dropdown"  >
      <button class="dropbtn">AMENITIES 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
       <label class="container" style="color: white;">Cupboard
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
         <label class="container" style="color: white;">Table/Chair
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
         <label class="container" style="color: white;">TV
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
        <label class="container" style="color: white;">Air conditioner
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
         <label class="container" style="color: white;">Attached toilet
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
       
        <label class="container" style="color: white;">Fridge
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
    </div></div> </td>         
    <td class="td">
         <div class="dropdown"  >
      <button class="dropbtn">GENDER
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <label class="container" style="color: white;">Male
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
        <label class="container" style="color: white;">Female
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
        <label class="container" style="color: white;">Others
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
    </div></div> </td>
    
    <td class="td">
         <div class="dropdown"  >
      <button class="dropbtn">CITY
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <label class="container" style="color: white;">New Delhi
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>  
        
        <label class="container" style="color: white;">Mumbai
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
        <label class="container" style="color: white;">Banglore
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
        <label class="container" style="color: white;">Chennai
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
        
    </div></div> </td>
           </tr></table>
         </div> 
       <%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>

    <%String city=" ",state=" ",street=" ";
       try{
          int h=1;  
        Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Aman Singh","king8115747103");		
	String scity=request.getParameter("city");
        String flat="myFlat";
//String query="SELECT  FLATADDRESS.CITY,FLATADDRESS.STATE,FLATADDRESS.STREET,FLAT.ACCOMADATION,FLAT.RENT FROM FLATAddress INNER JOIN FLAT ON FLATADDRESS.ID = FLAT.ID WHERE FLATADDRESS.CITY=scity";
        
	Statement st=con.createStatement();
        //st.setString(1,"Delhi");
ResultSet rs=st.executeQuery("SELECT FLAT.ID,  FLATADD.CITY,FLATADD.STATE,FLATADD.STREET,FLAT.ACCOMADATION,FLAT.RENT FROM FLATAdd INNER JOIN FLAT ON FLATADD.ID = FLAT.ID WHERE FLAT.ID=1");
DatabaseMetaData dbmd=con.getMetaData();  
 //rs.last();
   // int count = rs.getRow();
   // rs.beforeFirst();
//ResultSet rs=st.executeQuery("SELECT  FLATADDRESS.CITY,FLATADDRESS.STATE,FLATADDRESS.STREET,FLAT.ACCOMADATION,FLAT.RENT FROM FLATAddress INNER JOIN FLAT ON FLATADDRESS.ID = FLAT.ID WHERE FLAT.ID=1");
    %>
         <script>
         var myCenter = new google.maps.LatLng(28.569271,77.244110);
         function loadMap(){
			
            var mapProp = {
               center:myCenter,
               zoom:9,
               mapTypeId:google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
            
           var marker = new google.maps.Marker({
               position: new google.maps.LatLng(28.569271,77.244110),
               map: map,
               animation:google.maps.Animation.Drop
            });
            
            marker.setMap(map);
            
            var infowindow = new google.maps.InfoWindow({
               content:" Lajpat Nagar,New Delhi " 
            });
            
            google.maps.event.addListener(marker, 'click', function() {
               infowindow.open(map,marker);
            });
            
             var marker2 = new google.maps.Marker({
               position: new google.maps.LatLng(28.4089,77.3178),
               map: map,
               animation:google.maps.Animation.Drop
            });
            
             marker2.setMap(map);
            
            var infowindow2 = new google.maps.InfoWindow({
               content:" Faridabad,New Delhi " 
            });
            
            google.maps.event.addListener(marker2, 'click', function() {
               infowindow2.open(map,marker2);
            });
            
             var marker3 = new google.maps.Marker({
               position: new google.maps.LatLng(28.678589,77.102106),
               map: map,
               animation:google.maps.Animation.Drop
                
            });
            
             marker3.setMap(map);
            
            var infowindow3 = new google.maps.InfoWindow({
               content:<%=flat%>
            });
            
            google.maps.event.addListener(marker3, 'click', function() {
               infowindow3.open(map,marker3);
            });
            
             var marker4 = new google.maps.Marker({
               position: new google.maps.LatLng(28.632846,77.219639),
               map: map,
               animation:google.maps.Animation.Drop
            });
            
             marker4.setMap(map);
            
            var infowindow4 = new google.maps.InfoWindow({
               content:" Rajiv Chowk,New Delhi " 
            });
            
            google.maps.event.addListener(marker4, 'click',loaDoc());
            
            
         }
      </script>
       
       <%}
 catch(Exception e)
	 {
       
	 }%>
       
       
      <div id = "googleMap" style = "width:60%; height:400px;margin:30px;  display: inline-block;"></div>
      <div id="demo">
<h1>Location Info</h1>
<button type="button" onclick="loadDoc()">Change Content</button>
</div>

<script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("GET", "mapinfo.jsp", true);
  xhttp.send();
}
</script>
   </body>
   
</html>