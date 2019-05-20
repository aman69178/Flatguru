import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import java.util.*;
import java.text.*;
import java.sql.*;

public class flagadvertregister extends HttpServlet {
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
		ps=con.prepareStatement("Insert into flat values(flatseq.nextval,?,?,?,?,?)");
                RequestDispatcher rr;
                  String rent=request.getParameter("rent");
                  String ffname=request.getParameter("ffname");
                String flname=request.getParameter("flname");
                String phoneno=request.getParameter("phoneno");
                String acco=request.getParameter("acco");
                String gender=request.getParameter("gender");
		
 ps.setString(1,ffname); 
ps.setString(2,flname);
 ps.setString(3,rent);
ps.setString(4,gender); 
 ps.setString(5,acco);

 int i = ps.executeUpdate();
  if(i!=0){
  pw.println("image inserted successfully");
  rr= request.getRequestDispatcher("flagaddress.jsp");
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
