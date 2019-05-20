import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import java.util.*;
import java.text.*;
import java.sql.*;

public class ImageInsert extends HttpServlet {
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
                String ffname=request.getParameter("ffname");
                String flname=request.getParameter("flname");
                String phoneno=request.getParameter("phoneno");
                String gender=request.getParameter("gender");
                String cupboard=request.getParameter("cupboard");
                String television=request.getParameter("telivision");
                String ac=request.getParameter("ac");
                String fridge=request.getParameter("fridge");
                String toilet=request.getParameter("toilet");
                String tablechair=request.getParameter("tablechair");
	        String rent=request.getParameter("rent");
	        String acco=request.getParameter("acco");
                String image1=request.getParameter("image1");
                 String image2=request.getParameter("image2");
		 String image3=request.getParameter("image3");
		 String image4=request.getParameter("image4");
		 String image5=request.getParameter("image5");
                 String flatno=request.getParameter("flatno");
                 String street=request.getParameter("street");
                 String city=request.getParameter("city");
		 String state=request.getParameter("state");
		String country=request.getParameter("country");
		 String zipcode=request.getParameter("zipcode");
		 String email_id=request.getParameter("email_id");
		
		
		
		
                
                
                
                File file1 =new File(image1);
  FileInputStream fs = new FileInputStream(file1);

   File file2 =new File(image2);
  FileInputStream fs2 = new FileInputStream(file2);

    File file3 =new File(image3);
  FileInputStream fs3 = new FileInputStream(file3);
  
   File file4 =new File(image4);
  FileInputStream fs4 = new FileInputStream(file4);
  
   File file5 =new File(image5);
  FileInputStream fs5 = new FileInputStream(file5);


 
 
 
 
 

 
 ps=con.prepareStatement("Insert into flatimage values(imageseq.nextval,?,?,?,?,?)");
             ps.setBinaryStream(1,fs,fs.available());
ps.setBinaryStream(2,fs2,fs2.available());
ps.setBinaryStream(3,fs3,fs3.available());
ps.setBinaryStream(4,fs4,fs4.available());
ps.setBinaryStream(5,fs5,fs5.available());


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
			pw.println(e.getMessage());
		}
	   
    }

}
