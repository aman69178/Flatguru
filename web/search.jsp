<html>
<body>
    
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<iframe width="50" height="50">
<%Connection con = null;
Statement stmt = null;

ResultSet rs = null;
response.setContentType("text/html");
try {

Class.forName("oracle.jdbc.driver.OracleDriver");

con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Aman Singh","king8115747103");

stmt = con.createStatement();

rs = stmt.executeQuery("select image from flatimages where id='2' ");

while(rs.next()) {

Blob image = rs.getBlob(1);
 byte[ ] imgData = image.getBytes(1,(int)image.length());
OutputStream o = response.getOutputStream();

o.write(imgData);
}} catch (Exception e) {


out.println( e.getMessage());



} 

%>

</table>
</iframe>
<p>Sdsd</p>

</body></html>