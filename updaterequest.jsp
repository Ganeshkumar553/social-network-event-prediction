<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
<title>updating friend request</title>

<%
		int n=0;
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

		Date now = new Date();
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
		String status = "waiting";
						
	try{
		String rto = request.getParameter("username");
		int id=Integer.parseInt(request.getParameter("id"));
		String rfrom = (String)application.getAttribute("user"); 
		//String fname=request.getParameter("fname");
	
 		String sql="select * from friends where (rfrom='"+rfrom+"' && rto='"+rto+"')";
       	Statement stmt = connection.createStatement();
	   	ResultSet rs=stmt.executeQuery(sql);
		if(rs.next())
		{
				String msg="Already request sent";
				application.setAttribute("msg",msg);
				response.sendRedirect("searchfriend.jsp" );
		}
		else
		{
					
	   	String sql3="insert into friends(rfrom,rto,status,dt) values ('"+rfrom+"','"+rto+"','"+status+"','"+dt+"')";
       	Statement stmt3 = connection.createStatement();
	   	 n =stmt3.executeUpdate(sql3);
		}
	   	if(n>0)
	   	{
			
			String msg="Request sent to "+rto;
			application.setAttribute("msg",msg);
			response.sendRedirect("searchfriend.jsp" );
	    
     	}
	    else
	    {	
			request.setAttribute("msg","Failure in Recommendation");
				response.sendRedirect("searchfriend.jsp" );
			
      	}
		connection.close();
	}catch(Exception e)
	{
		out.print(e);
	}
%>

		