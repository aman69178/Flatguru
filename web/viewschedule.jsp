<html><head>
<script language="Javascript">
function submitOne() { 
	
	document.f2.action="./delreq";
                        document.f2.submit();
						return true;
						}
 
 function submitTwo() { document.f2.action="./accreq";
                        document.f2.submit(); }
 
</script>
<style>
     #faculty{
        font-family: "Trebuchet MS","Arial","Helvetica","san-serif";
        border-collapse: collapse;
        width:100%;
    }
    #faculty td,#faculty th{
        border:1px solid activecaption;
        padding: 8px;
    }
    #faculty tr:nth-child(even){background-color: #f2f2f2;}  
    
    #faculty th{
        background-color: steelblue;
        color:white;
        text-align: left;
    }
    
    #faculty tr:hover{
        background-color: #ddd;
    }
    
     a:link {color: gray}
a:visited {color:gray}
a:hover {color:royalblue}
a:active {color:white}

  

    .full-width-background {
   margin-left: -100px;
   margin-right: -100px;
 }
 
 .full-width {
   margin-left: -100px;
   margin-right: -100px;
 }
 .fwb-red {
   background-color: royalblue;
 }
 
  

    
</style>
    </head>
<body >
    
    <table width=100%>
<tr>

<td align="center" >
<h3><i>Grant or Reject the Visit Requests</i></h3>
<form name=f2 method="get">
<table id="faculty">
<thead>
<tr><th>VisiterId</th><th>Visiter Firstname</th><th>Visitor Lastname</th><th>Visitor Contact</th><th>StartDate</th><th>EndDate</th><th>ScheduleDate</th><th>Grant/reject</th></tr>
</thead>
<tbody>
<%@ page import="java.sql.*,java.text.*" %>
<%
String s1=" ",s2=" ",s3=" ",s4=" ",s5=" ",s6=" ",sdate=" ",s7=" ",edate="",mdate="";
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Aman Singh","king8115747103");		

	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select id,firstname,lastname,phoneno,sdate,edate,mdate from meeting");
	ResultSetMetaData rd=rs.getMetaData();%>
	
<%	
	while(rs.next())
	{
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		sdate=rs.getString(5);
		edate=rs.getString(6);
		mdate=rs.getString(7);
		Format form=new SimpleDateFormat("dd-MMM-yyyy");
		DateFormat ff=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		s5=form.format(ff.parse(sdate));

Format form2=new SimpleDateFormat("dd-MMM-yyyy");
		DateFormat ff2=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		s6=form2.format(ff2.parse(edate));
                
Format form3=new SimpleDateFormat("dd-MMM-yyyy");
		DateFormat ff3=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		s7=form.format(ff3.parse(mdate));




%>
	<tr>
	<td><%=s1%></td>
	<td><%=s2%></td>
	<td><%=s3%></td>
	<td><%=s4%></td>
	<td><%=s5%></td>
        <td><%=s6%></td>
        <td><%=s7%></td>
        
	<td><input type=checkbox name="sta" value="<%=s3%>"></a></td></tr>
	</tr>
	<% }%>

</tbody>
</table>
<input type="submit" value="grant" onClick="submitTwo()">
<input type="submit" value="reject" onClick="submitOne()">
</form>
<%
}
	 catch(Exception e)
	 {
	 }
%>


</td>
</tr>
</table>
</body>
</html>
