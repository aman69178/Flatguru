<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Reterving multiple images</title>

<style>
    
    
 

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





  

    
</style>

</head>

<body style="background-color:whitesmoke;max-width: 40%;">
    
             
 
   
     
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>

    <%String city=" ",state=" ",street=" ";
       try{
          int h=1;  
        Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Aman Singh","king8115747103");		
	String scity=request.getParameter("city");
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
    
   
    
   
   
         <div style="margin-left:20px;display: inline-block;">
   
         <%while(rs.next()){
                 
             %>  
        
    <table style="max-height: 930px;min-height:630px;  display:inline-block;
           background-color:whitesmoke;margin-top:20px;" >
        
       <tr>
     <td style="background-color:white;display: inline-block;position:relative;top:15px;  "> 
         <img style="max-height:370px;width:100%;margin-top:0px;" src="view.jsp?id=<%=rs.getInt(1)%>">
         <br>
      <table  >
          <br> <tr> <font class="pg" style="color: black;font-size: 30px;position:relative;left:11px;">
     Girls PG<%=rs.getString(4)%></font></tr>
      <br><tr> <font class="pg" style="color: gray;font-size: 12px;position:relative;left:11px;font-family:monospace">
                    Property id:<%=rs.getString(1)%></font></tr>
         <tr><br><font style="font-size:16px;color: black;position:relative;left:11px;" ><%=rs.getString(4)%>,<%=rs.getString(3)%>,<%=rs.getString(3)%></font>
</tr><tr> <br><font style="font-size:18px;color:gray;position:relative;left:11px;" >India</font>
</tr><tr><br><font style="font-size:19px;position:relative;left:11px;" >Accomodation: </font></tr>
<tr> <font style="color:gray;font-size:20px;position:relative;left:11px;" ><%=rs.getInt(5)%></font>
</tr><br><tr>  <img style="position:relative;left:11px;" src="rupees.png"/>
  <font style="color:#000099;font-size:24px;position:relative;left:11px;"><%=rs.getInt(6)%></font>
</tr>              
         
         </table> 
     </td>
       
     
        </tr>
        
              <% h++;}%>

 <%}
 catch(Exception e)
	 {
       
	 }%>
    </table>
    
  
    
</body>

</html>