import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class searchimage extends  HttpServlet{
  public void doGet(HttpServletRequest request, HttpServletResponse 
  response) throws ServletException, IOException{
  //PrintWriter pw = response.getWriter();
  String connectionURL = "jdbc:mysql://192.168.10.59:3306/example";
  java.sql.Connection con=null;
  try{  
  Class.forName("oracle.jdbc.driver.OracleDriver");

con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Aman Singh","king8115747103");

      Statement st1=con.createStatement();
  ResultSet rs1 = st1.executeQuery("select image from"+
   " flatimages where id='1'");
  String imgLen="";
  if(rs1.next()){
  imgLen = rs1.getString(1);
  System.out.println(imgLen.length());
  }  
  rs1 = st1.executeQuery
  ("select image from flatimages where id='1'");
  if(rs1.next()){
  int len = imgLen.length();
  byte [] rb = new byte[len];
  InputStream readImg = rs1.getBinaryStream(1);
  int index=readImg.read(rb, 0, len);  
  System.out.println("index"+index);
  st1.close();
  response.reset();
  response.setContentType("image/jpg");
  response.getOutputStream().write(rb,0,len);
  response.getOutputStream().flush();  
  }
  }
  catch (Exception e){
  e.printStackTrace();
  }
  }
}