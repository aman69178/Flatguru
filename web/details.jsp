<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Reterving multiple images</title>

<style>
    
    
  .navbar {
  background-color: darkslategrey;
  width: 100%;
  height: 234px;
  margin: -5px;
  
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
  margin-top: 140px;
  
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
 margin-top: 32px;  
}



  

    
</style>

</head>

<body style="background-color:whitesmoke">
    
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
    String name=(String)session.getAttribute("user");  

    int index=Integer.parseInt(name);
       try{
          int h=1;  
        Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Aman Singh","king8115747103");		
	String scity=request.getParameter("city");
//String query="SELECT  FLATADDRESS.CITY,FLATADDRESS.STATE,FLATADDRESS.STREET,FLAT.ACCOMADATION,FLAT.RENT FROM FLATAddress INNER JOIN FLAT ON FLATADDRESS.ID = FLAT.ID WHERE FLATADDRESS.CITY=scity";
        
	Statement st=con.createStatement();
        //st.setString(1,"Delhi");
ResultSet rs=st.executeQuery("SELECT FLAT.ID,  FLATADD.CITY,FLATADD.STATE,FLATADD.STREET,FLAT.ACCOMADATION,FLAT.RENT FROM FLATAdd INNER JOIN FLAT ON FLATADD.ID = FLAT.ID WHERE FLAT.ID='" +index+ "'");
DatabaseMetaData dbmd=con.getMetaData();  
 //rs.last();
   // int count = rs.getRow();
   // rs.beforeFirst();
//ResultSet rs=st.executeQuery("SELECT  FLATADDRESS.CITY,FLATADDRESS.STATE,FLATADDRESS.STREET,FLAT.ACCOMADATION,FLAT.RENT FROM FLATAddress INNER JOIN FLAT ON FLATADDRESS.ID = FLAT.ID WHERE FLAT.ID=1");
    %>
    
   
    
   
   
         <div style="margin-left:20px;display: inline-block;">
   
         <%while(rs.next()){
                 
             %>  
        
    <table style="max-height: 790px;min-height:790px;  display:inline-block;
           background-color:whitesmoke;margin-top:20px;" >
        
       <tr style="max-height:790px;min-height:790px;" >
     <td style="background-color:white;display: inline-block;position:relative;top:15px;  "> 
         <img style="max-height:470px;min-height:470; width: 875px;margin-top:0px;" src="view.jsp?id=<%=rs.getInt(1)%>">
         <br><br>
      <table  >
          <br> <tr> <font class="pg" style="color: black;font-size: 34px;position:relative;left:11px;">
      <%=rs.getString(4)%></font></tr>
      <br><tr> <font class="pg" style="color: gray;font-size: 12px;position:relative;left:11px;font-family:monospace">
      Property id:<%=rs.getString(1)%></font></tr><br>
         <tr><br><font style="font-size:16px;color: black;position:relative;left:11px;" ><%=rs.getString(4)%>,<%=rs.getString(3)%>,<%=rs.getString(3)%></font>
</tr><tr> <br><font style="font-size:18px;color:gray;position:relative;left:11px;" >India</font>
</tr><tr><br><font style="font-size:19px;position:relative;left:11px;" >Accomodation: </font></tr>
<tr> <font style="color:gray;font-size:20px;position:relative;left:11px;" ><%=rs.getInt(5)%></font>
</tr><br><tr>  <img style="position:relative;left:11px;" src="rupees.png"/>
  <font style="color:#000099;font-size:24px;position:relative;left:11px;"><%=rs.getInt(6)%></font>
</tr>              
         
         </table> 
     </td>
       
     <td style="background-color:white;display: inline-block;margin-left:18px;margin-top:20px;
         padding-bottom:20px;  " >
<header style="color:black;font-size:25px;display:inline-block;padding-top:20px;padding-bottom:20px;padding-left:90px;padding-right:90px; margin-left:10px;">Schedule a visit</header>
<form style="margin-left:0px;position:relative;" action="./MeetingServlet" method="post">

    <center><input type="text" id="firstname" name="firstname" style="margin:10px;padding-left: 50px;padding-right: 50px; padding-top: 10px;padding-bottom: 10px;" placeholder="First Name" ></center><br>

    <center><input type="text" id="lastname" name="lastname" style="margin:10px;padding-left: 50px;padding-right: 50px; padding-top: 10px;padding-bottom: 10px;" placeholder="Last Name" ></center><br>

    <center><input type="text" id="email" name="email" style="margin:10px;padding-left: 50px;padding-right: 50px; padding-top: 10px;padding-bottom: 10px;" placeholder="Email" ></center><br>

    <center><input type="text" id="phone" name="phone" style="margin:10px;padding-left: 50px;padding-right: 50px; padding-top: 10px;padding-bottom: 10px;" placeholder="Phone Number" ></center><br>

    
    <center> Start of stay Date</center><br>
    
    <center><select name="sday" size=""  style="">			    					<option value=01>1</option>
				       					<option value=02>2</option>
				      					<option value=03>3</option>
				      					<option value=04>4</option>
				   						<option value=05>5</option>
				    					<option value=06>6</option>
				    	       			<option value=07>7</option>
				    	  				<option value=08>8</option>
				     			        <option value=09>9</option>
				    				   	<option value=10>10</option>
				    					<option value=11>11</option>
				    					<option value=12>12</option>
				    					<option value=13>13</option>
				    					<option value=14>14</option>
				 						<option value=15>15</option>
				  						<option value=16>16</option>
				    					<option value=17>17</option>
				    					<option value=18>18</option>
				    					<option value=19>19</option>
				    					<option value=20>20</option>
				    					<option value=21>21</option>
				    					<option value=22>22</option>
				    					<option value=23>23</option>
				    					<option value=24>24</option>
				    					<option value=25>25</option>
				    					<option value=26>26</option>
				    					<option value=27>27</option>
				    					<option value=28>28</option>
				    					<option value=29>29</option>
				    					<option value=30>30</option>
				    					<option value=31>31</option>
			      						</select>&nbsp;&nbsp;&nbsp;&nbsp;
				  						<select name="smonth" size="">
				    					<option value="Jan">Jan</option>
				    					<option value="Feb">Feb</option>
				    					<option value="Mar">Mar</option>
				    					<option value="Apr">Apr</option>
				    					<option value="May">May</option>
				    					<option value="Jun">Jun</option>
				    					<option value="Jul">Jul</option>
				    					<option value="Aug">Aug</option>
				    					<option value="Sep">Sep</option>
				    					<option value="Oct">Oct</option>
				    					<option value="Nov">Nov</option>
				    					<option value="Dec">Dec</option>
			      						</select>&nbsp;&nbsp;&nbsp;&nbsp;
<input id="eyear" name="syear" type="text" size="8" maxlength="4" value="" >(yyyy)&nbsp;&nbsp;&nbsp;&nbsp;
    </center>								
                                                                        <br>

     <center> End of stay Date</center><br>
   
     <center><select name="eday" size=""  style="" >
				    					<option value=01>1</option>
				       					<option value=02>2</option>
				      					<option value=03>3</option>
				      					<option value=04>4</option>
				   						<option value=05>5</option>
				    					<option value=06>6</option>
				    	       			<option value=07>7</option>
				    	  				<option value=08>8</option>
				     			        <option value=09>9</option>
				    				   	<option value=10>10</option>
				    					<option value=11>11</option>
				    					<option value=12>12</option>
				    					<option value=13>13</option>
				    					<option value=14>14</option>
				 						<option value=15>15</option>
				  						<option value=16>16</option>
				    					<option value=17>17</option>
				    					<option value=18>18</option>
				    					<option value=19>19</option>
				    					<option value=20>20</option>
				    					<option value=21>21</option>
				    					<option value=22>22</option>
				    					<option value=23>23</option>
				    					<option value=24>24</option>
				    					<option value=25>25</option>
				    					<option value=26>26</option>
				    					<option value=27>27</option>
				    					<option value=28>28</option>
				    					<option value=29>29</option>
				    					<option value=30>30</option>
				    					<option value=31>31</option>
			      						</select>&nbsp;&nbsp;&nbsp;&nbsp;
				  						<select name="emonth" size="">
				    					<option value="Jan">Jan</option>
				    					<option value="Feb">Feb</option>
				    					<option value="Mar">Mar</option>
				    					<option value="Apr">Apr</option>
				    					<option value="May">May</option>
				    					<option value="Jun">Jun</option>
				    					<option value="Jul">Jul</option>
				    					<option value="Aug">Aug</option>
				    					<option value="Sep">Sep</option>
				    					<option value="Oct">Oct</option>
				    					<option value="Nov">Nov</option>
				    					<option value="Dec">Dec</option>
			      						</select>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <input id="eyear" name="eyear" type="text" size="8" maxlength="4" value="" onkeypress=checknumeric()>(yyyy)&nbsp;&nbsp;&nbsp;&nbsp;
     </center>
                                                                        <br>
                                                                        <center> Meeting Date</center><br>
                                                                       
                                                                        <center><select name="mday" size=""  style="">
				    					<option value=01>1</option>
				       					<option value=02>2</option>
				      					<option value=03>3</option>
				      					<option value=04>4</option>
				   						<option value=05>5</option>
				    					<option value=06>6</option>
				    	       			<option value=07>7</option>
				    	  				<option value=08>8</option>
				     			        <option value=09>9</option>
				    				   	<option value=10>10</option>
				    					<option value=11>11</option>
				    					<option value=12>12</option>
				    					<option value=13>13</option>
				    					<option value=14>14</option>
				 						<option value=15>15</option>
				  						<option value=16>16</option>
				    					<option value=17>17</option>
				    					<option value=18>18</option>
				    					<option value=19>19</option>
				    					<option value=20>20</option>
				    					<option value=21>21</option>
				    					<option value=22>22</option>
				    					<option value=23>23</option>
				    					<option value=24>24</option>
				    					<option value=25>25</option>
				    					<option value=26>26</option>
				    					<option value=27>27</option>
				    					<option value=28>28</option>
				    					<option value=29>29</option>
				    					<option value=30>30</option>
				    					<option value=31>31</option>
			      						</select>&nbsp;&nbsp;&nbsp;&nbsp;
				  						<select name="mmonth" size="">
				    					<option value="Jan">Jan</option>
				    					<option value="Feb">Feb</option>
				    					<option value="Mar">Mar</option>
				    					<option value="Apr">Apr</option>
				    					<option value="May">May</option>
				    					<option value="Jun">Jun</option>
				    					<option value="Jul">Jul</option>
				    					<option value="Aug">Aug</option>
				    					<option value="Sep">Sep</option>
				    					<option value="Oct">Oct</option>
				    					<option value="Nov">Nov</option>
				    					<option value="Dec">Dec</option>
			      						</select>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <input id="eyear" name="myear" type="text" size="8" maxlength="4" value="" onkeypress=checknumeric()>(yyyy)&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        </center>
                                                                        <br>
                                                                     
      
				
                                                                        
                                                                        <center> <input class="button" type="submit" value="Schedule" style="margin:10px;padding-left: 95px;padding-right: 95px;"></center><br>

</form>
         
     </td>
        </tr>
        
              <% h++;}%>

 <%}
 catch(Exception e)
	 {
       
	 }%>
    </table>
    
    <table style="position:relative;top:0px;background-color: white;padding:10px;
           max-width:100%;min-width:100%;" >  
        <tr>
          <td> <font  style="color: black;font-size: 26px;padding-bottom:20px;">
              Amenities </font></td></tr>
    <tr>
        <td style="padding:20px;">
            <font style="color:gray;padding: 10px;">CupBoard</font>
           <br>
           <br>
          <font style="color:gray;padding: 10px;">Table/Chair</font>
          <br>
          <br>
          <font style="color:gray;padding: 10px;">Attached Toilet</font>
        
         </td>
         <td style="padding:20px;">
        <font style="color:gray;padding: 10px;">Telivision</font>
        <br>
         <br>
          <font style="color:gray;padding: 10px;">Fridge</font>
          <br>
           <br>
          <font style="color:gray;padding: 10px;">Air Conditioner</font>
        </td>
     </tr>
         
    </table>
    
    <table style="position:relative;top:0px;background-color: white;padding:10px;max-width:100%;min-width:100%;" >  
        <tr>
          <td> <font  style="color: black;font-size: 26px;padding-bottom:20px;">
              Property Images </font></td></tr>
    <tr>
         
     <br> <td>
         <img id="myImg" style="padding-top:10px; max-height:250px;width: 250px;" src="Firstimage.jsp?id=<%=index%>"></td>
     
      <br> <td>
         <img id="myImg" style="padding-top:10px; max-height:250px;width: 250px;" src="Secondimage.jsp?id=<%=index%>"></td>
    
      <br> <td>
          <img id="myImg" style="padding-top:10px; max-height:250px;width: 250px;" src="Thirdimage.jsp?id=<%=index%>"></td>
    
      <br> <td>
          <img id="myImg" style="padding-top:10px; max-height:250px;width: 250px;" src="Fourthimage.jsp?id=<%=index%>"></td>
    
         </tr>
         
    </table>
    
   
         </div>
    
    <div  style="background-color:#000033;width: 100%;margin-left:-7px;margin-right:-6px;margin-top: 30px;" >
        <P style="color:#fff;padding:50px;"><%=request.getParameter("city")%></p>
    </div> 
    
    
</body>

</html>