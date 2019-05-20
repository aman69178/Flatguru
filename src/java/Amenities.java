import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import java.sql.*;

public class Amenities extends HttpServlet {
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
                   String cupboard=request.getParameter("cupboard");
                String television=request.getParameter("telivision");
                String ac=request.getParameter("ac");
                String fridge=request.getParameter("fridge");
                String toilet=request.getParameter("toilet");
                String tablechair=request.getParameter("tablechair");
	        
                 
                 
                 
                 ps=con.prepareStatement("Insert into flatamenities values(amenitiesseq.nextval,?,?,?,?,?,?)");
 ps.setString(1, cupboard);
  ps.setString(2,tablechair);
 ps.setString(3, television);
 ps.setString(4, ac);
 ps.setString(5, toilet);
 ps.setString(6,fridge);

 


 int i = ps.executeUpdate();
 
  if(i!=0){
  pw.println("image inserted successfully");
  rr= request.getRequestDispatcher("flatimages.html");
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
