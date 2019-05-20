import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import java.util.*;
import java.text.*;
import java.sql.*;

public class applianceregservlet extends HttpServlet {
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
		ps=con.prepareStatement("Insert into appliances values(applianceseq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                RequestDispatcher rr;
                String aname=request.getParameter("aname");
                String bname=request.getParameter("bname");
                String rent=request.getParameter("rent");
                String image=request.getParameter("image");
                String ffname=request.getParameter("ffname");
                String flname=request.getParameter("lfname");
                String street=request.getParameter("street");
                String city=request.getParameter("city");
                String state=request.getParameter("state");
                String country=request.getParameter("country");
                String zipcode=request.getParameter("zipcode");
	        String email_id=request.getParameter("email_id");
	        String phoneno=request.getParameter("phoneno");
		File file =new File(image);
  FileInputStream fs = new FileInputStream(file);

  ps.setString(1, aname);
ps.setString(2,bname);
ps.setString(3,rent);
ps.setBinaryStream(4,fs,fs.available());
ps.setString(5,ffname); 
ps.setString(6,flname);
ps.setString(7,street);
ps.setString(8,city);
ps.setString(9,state);
ps.setString(10,country);
ps.setString(11,zipcode);
ps.setString(12,email_id); 
ps.setString(13,phoneno); 

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
