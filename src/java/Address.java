import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import java.util.*;
import java.text.*;
import java.sql.*;

public class Address extends HttpServlet {
    Connection con=null;
	PreparedStatement ps=null;	
	ResultSet rs=null;
	

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
                try{
                Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
                con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Aman Singh","king8115747103");		
		ps=con.prepareStatement("Insert into flatadd values(addressseq.nextval, ?,?,?,?,?,?)");
                RequestDispatcher rr;
                  String flatno=request.getParameter("flatno");
                  String street=request.getParameter("street");
                String city=request.getParameter("city");
                String state=request.getParameter("state");
                String pincode=request.getParameter("pincode");
                String phoneno=request.getParameter("phoneno");
		
 ps.setString(1,flatno); 
ps.setString(2,street);
 ps.setString(3,city);
ps.setString(4,state); 
 ps.setString(5,phoneno);
ps.setString(6,pincode);

 int i = ps.executeUpdate();
  if(i!=0){
  pw.println("image inserted successfully");
  rr= request.getRequestDispatcher("flatamenities.html");
  rr.forward(request, response);
  }
  else{
  pw.println("problem in image insertion");
  }  

 }
                
                catch(ClassNotFoundException e)
		{
			pw.println("exception"+e);
		}
		catch(SQLException e)
		{
			pw.println("SQL EXCEPTION");	
			pw.println("TRY AGAIN");
		}
		    	catch(Exception e)
		{
			pw.println("can't load driver"+e.getMessage());
		}
	   
    }

}
