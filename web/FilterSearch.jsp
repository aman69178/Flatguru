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
 margin-top: 12px;  
}



  

    
</style>

</head>

<body style="background-color:#fff">
    
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
	String gender=request.getParameter("gender");
        String scity=request.getParameter("city");
        String budget=request.getParameter("budget");
        String acco=request.getParameter("acco");
        String cupboard=request.getParameter("cupboard");
        String television=request.getParameter("telivision");
        String ac=request.getParameter("ac");
        String fridge=request.getParameter("fridge");
        String toilet=request.getParameter("toilet");
        String tablechair=request.getParameter("tablechair");
        
	        
//String query="SELECT  FLATADDRESS.CITY,FLATADDRESS.STATE,FLATADDRESS.STREET,FLAT.ACCOMADATION,FLAT.RENT FROM FLATAdd INNER JOIN FLAT ON FLATADD.ID = FLAT.ID WHERE FLATADD.CITY=scity";
        
	Statement st=con.createStatement();
        //st.setString(1,"Delhi");
//ResultSet rs=st.executeQuery("SELECT  FLATADD.CITY,FLATADD.STATE,FLATADD.STREET,FLAT.ACCOMADATION,FLAT.RENT,FLAT.ID FROM FLATAdd INNER JOIN FLAT ON FLATADD.ID = FLAT.ID  WHERE FLATADD.CITY='Delhi'");
ResultSet rs=st.executeQuery("SELECT  a.CITY,a.STATE,a.STREET,f.ACCOMADATION,f.RENT,f.ID FROM FLATAdd a ,FLAT f,FlatAmenities c  where a.ID = f.ID AND f.id=c.id AND a.CITY='"+scity+"'  AND f.accomadation= '"+acco+"' AND f.rent<='"+budget+"'AND c.cupboard='"+cupboard+"'AND c.telivision='"+television+"'AND c.refrigerator='"+fridge+"'AND c.airconditioner='"+ac+"'AND f.gender='"+gender+"' AND c.tablechair='"+tablechair+"'AND f.gender='"+gender+"'");

DatabaseMetaData dbmd=con.getMetaData();  
 //rs.last();
   // int count = rs.getRow();
   // rs.beforeFirst();
//ResultSet rs=st.executeQuery("SELECT  FLATADDRESS.CITY,FLATADDRESS.STATE,FLATADDRESS.STREET,FLAT.ACCOMADATION,FLAT.RENT FROM FLATAddress INNER JOIN FLAT ON FLATADDRESS.ID = FLAT.ID WHERE FLATADDRESS.CITY=scity");
    %>
    
    <div style="box-shadow: 2px 2px #888888; background-color:#fff;width:93%;min-height:30%;margin-left: 67px;margin-top:30px;  " >
        <p style="padding: 20px;">Search Results are:</p>
    </div>
    
   
   
         <div style="margin-left:60px;display: inline-block;">
   
        
    
        
        
             <%while(rs.next()){
                 
             %>  
        
    <table style="max-height: 230px;min-height: 230px; box-shadow: 2px 2px #888888; display:inline-block;background-color:white;margin-top:13px;margin-left:10px;margin-right: 10px ;min-width: 340px;" >
        
        <tr>
     <td> <img style="max-height:228px;width: 275px;margin-right: 5px;" src="view.jsp?id=<%=h%>"></td>
            <td style="min-width:190px;max-width: 190px;">
                <table >
                    <tr> <font class="pg" style="color: black;font-size: 20px;position:relative;left:11px;top:-34px;">
                    Girls PG in <%=rs.getString(3)%></font></tr>
 <tr><br><font style="font-size:12px;color: gray;position:relative;left:11px;top:-34px" ><%=rs.getString(3)%>,<%=rs.getString(2)%>,<%=rs.getString(1)%></font>
</tr><tr> <br><font style="font-size:12px;color:gray;position:relative;left:11px;top:-34px" >India</font>
</tr><tr><br><font style="font-size:15px;position:relative;left:11px;top:-34px" >Accomodation: </font></tr>
<tr> <font style="color:gray;font-size: 13px;position:relative;left:11px;top:-34px" ><%=rs.getInt(4)%></font>
</tr><br><tr>  <img style="position:relative;left:11px;top:-14px" src="rupees.png"/>
  <font style="color:#000099;font-size:24px;position:relative;left:11px;top:-14px"><%=rs.getInt(5)%></font>
</tr>              </table>  </td>
           <td>
               <form action="details.jsp">
                   <%session.setAttribute("user",rs.getString(6));  
 %>
                   <input type="submit" style="" class="button" value="View Details" />
               </form>
               </td>
        </tr>
    </table>
     <% h++;}%>

 <%}
 catch(Exception e)
	 {
       
	 }%>
    </div>

   <%@ include file="footer.jsp" %>


    
    <div  style="background-color:#000033;width: 100%;margin-left:-7px;margin-right:-6px;margin-top: 30px;" >
        <P style="color:#fff;padding:50px;"><%=request.getParameter("toilet")%></p>
    </div> 
</body>

</html>