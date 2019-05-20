import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import java.util.*;
import java.text.*;
import java.sql.*;
public class MeetingServlet extends HttpServlet
{
    	Connection con=null;
	PreparedStatement ps=null;	
	ResultSet rs=null;
	int flag=0;
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter pw=res.getWriter();
	    	try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
        	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Aman Singh","king8115747103");		
		
                    ps=con.prepareStatement("INSERT INTO MEETING VALUES(?,?,?,?,?,?,?,?)");
			RequestDispatcher rr;
			
                        String firstname=req.getParameter("firstname");
			String lastname=req.getParameter("lastname");
                        String email=req.getParameter("email");
                        String phoneno=req.getParameter("phoneno");
			
                        String sday=req.getParameter("sday");
			String smonth=req.getParameter("smonth");
			String syear=req.getParameter("syear");
			String sdate=sday+'-'+smonth+'-'+syear;
			
                        String eday=req.getParameter("eday");
			String emonth=req.getParameter("emonth");
			String eyear=req.getParameter("eyear");
			String edate=eday+'-'+emonth+'-'+eyear;
                        
                        String mday=req.getParameter("mday");
			String mmonth=req.getParameter("mmonth");
			String myear=req.getParameter("myear");
			String mdate=mday+'-'+mmonth+'-'+myear;
			
                        ps.setInt(1,1);
                        ps.setString(2, firstname);
                        ps.setString(3,lastname);
                        ps.setString(4,phoneno);
                        ps.setString(5,email);
                        ps.setString(6, sdate);
                        ps.setString(7,edate);
                        ps.setString(8,mdate);
                        
                        
			int i = ps.executeUpdate();
  if(i!=0){
  pw.println("image inserted successfully");
  rr= req.getRequestDispatcher("regsuccess.html");
  rr.forward(req, res);
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