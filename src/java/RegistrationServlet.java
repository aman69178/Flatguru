import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import java.util.*;
import java.text.*;
import java.sql.*;

public class RegistrationServlet extends HttpServlet {
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
		  RequestDispatcher rr;
                String ffname=request.getParameter("ffname").toLowerCase();
                String flname=request.getParameter("flname").toLowerCase();
                String email=request.getParameter("mail").toLowerCase();
	        String phoneno=request.getParameter("phoneno");
		String type=request.getParameter("type").toLowerCase();
                
                if(type.equals("owner")){
                ps=con.prepareStatement("Insert into FLATGURUREGISTRATION values(flatguruseq.nextval,?,?,?,?,?)");
                }
                else if(type.equals("tenant")){
                     ps=con.prepareStatement("Insert into TENANTREGISTRATION values(tenantseq.nextval,?,?,?,?,?)");
             
                }
                
 ps.setString(1,ffname); 
ps.setString(2,flname);
ps.setString(3,phoneno);
ps.setString(4,type);
ps.setString(5,email); 

 int i = ps.executeUpdate();
  if(i!=0){
  pw.println("image inserted successfully");
  rr= request.getRequestDispatcher("regsuccess.html");
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
