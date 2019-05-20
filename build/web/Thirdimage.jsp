<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.io.output.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%
String url="jdbc:mysql://localhost:3306/testzeroDateTimeBehavior=convertToNull";
Connection con = null;
Statement stmt = null;
ResultSet rs = null;
String j=request.getParameter("id");
int i=Integer.parseInt(j);


try {
    Class.forName("oracle.jdbc.driver.OracleDriver");

con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Aman Singh","king8115747103");

    stmt = con.createStatement();
    rs = stmt.executeQuery("SELECT image4 FROM flatimage where id="+i );
      OutputStream o = response.getOutputStream();
    if(rs.next())
    {
             Blob bl = rs.getBlob(1);
             byte[] pict = bl.getBytes(1,(int)bl.length());
             response.setContentType("image/jpg");
             o.write(pict);
             o.flush();
             o.close();


    }

}
catch(Exception ex)
{
    out.println(ex);
} 
finally 
{
    rs.close();
    stmt.close();
    con.close();
}

%>