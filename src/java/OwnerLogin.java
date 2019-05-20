import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import java.util.*;
import java.text.*;
import java.sql.*;
public class OwnerLogin extends HttpServlet
{
    	Connection con=null;
	Statement ps=null;	
	ResultSet rs=null;
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter pw=res.getWriter();
	
 		try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
        	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Aman Singh","king8115747103");		
			
                    ps=con.createStatement();
			RequestDispatcher rd;	
			HttpSession ses=req.getSession(true);
			int p=0;
			String s1=req.getParameter("ffname");
                        String type=req.getParameter("type");
            String s2=req.getParameter("phoneno");
            if(type.equals("owner")){
            rs=ps.executeQuery("select firstname,phoneno from flatgururegistration");
            }
            else if(type.equals("tenant")){
             rs=ps.executeQuery("select firstname,phoneno from tenantregistration");
          
            }
            
            while(rs.next())
			{
				String w=rs.getString("firstname");
				String y=rs.getString("phoneno");
				
				if(s1.equals(w) && s2.equals(y))
				{
					p=1;
					ses.setAttribute("auserid",s1);
					rd= req.getRequestDispatcher("viewschedule.jsp");
					rd.forward(req,res);
				}
				
			}
		}	
   		catch(ClassNotFoundException e)
		{
		pw.println("exception"+e);
		}
		catch(SQLException e)
		{
			pw.println("sqlexception"+e);	
		}
		     	catch(Exception e)
		{
		pw.println("can't load driver"+e.getMessage());
                
		}
	}
}