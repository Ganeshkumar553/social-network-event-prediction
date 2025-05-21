<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all friends tweets</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-georgia.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style4 {color: #CC0000}
.style5 {font-size: 24px}
.style6 {
	color: #FFFF00;
	font-weight: bold;
}
.style7 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style5">Predicting Hot Events in the Early Period ? through Bayesian Model for Social Networks</span></a></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
	  <%String user=(String)application.getAttribute("user");%>
	  
        <ul>
          <li ><a href="usermain.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="#"><span><%=user%></span></a></li>
          <li><a href="userlogin.jsp"><span>Logout</span></a></li>
      
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Friends   Tweets   </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="img"></div>
          <div class="article">
            <p align="justify"></p>
<table width="642" align="left"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
	
		<%
	
    
	String s1,s2,s3,s4,rto;
	int i=0,j=0,m=0;
	
	try 
	{
	
	ArrayList al=new ArrayList();
	ArrayList al1=new ArrayList();
	String sql="select rto from friends where(rfrom='"+user+"' and status='Accepted')";
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
		rto=rs.getString(1);
		al1.add(rto);
	}
	String sql1="select rfrom from friends where(rto='"+user+"' and status='Accepted')";
	Statement st1=connection.createStatement();
	ResultSet rs1=st1.executeQuery(sql1);
	while(rs1.next())
	{
		rto=rs1.getString(1);
		al1.add(rto);
	}
	
	for(j=0;j<al1.size();j++)
	{

	String sql2="select * from tweets where username='"+al1.get(j)+"'"; 
	Statement st2=connection.createStatement();
	ResultSet rs2=st2.executeQuery(sql2);
	while(rs2.next())
	{
		i=rs2.getInt(1);
		s4=rs2.getString(2);
		s1=rs2.getString(3);
		s2=rs2.getString(4);
		s3=rs2.getString(5);
		al.add(s1);
		
		if(m==0){
		%>
		
				<tr>
				<td  width="89" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Created User </div></td>
				  <td  width="100" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Tweet Image </div></td>
				  <td  width="74" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Tweet Name</div></td>
				  <td   width="216" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Description</div></td>
				  <td  width="83" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Date</div></td>
			      <td  width="78" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Comments</div></td>
				</tr>
					<%}%>
				<tr>
				  <td  width="89" height="110" align="center" valign="middle"><div align="center" class="style7"><%out.println(s4);%></div></td>	
	   	<td width="100"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=i%>&type=<%="tweet"%>"/></td>
			  <td  width="74" height="110" align="center" valign="middle" style="color:#000000;"><div align="center" class="style7"><%out.println(s1);%></div></td>	
			  <td  width="216" height="110" align="center" valign="middle"><div align="center" class="style7"><%out.println(s2);%></div></td>
			  <td  width="83" align="center" valign="middle"><div align="center" class="style7"><%out.println(s3);%></div></td>
			  <td  width="78" height="110" align="center" valign="middle"><div align="center" class="style7"><a href="tweet_comment.jsp?name=<%=s1%>&id=<%=i%>&uname=<%=s4%>">Comment</a></div></td>
		</tr>
					
					<%m=2;
				}
				}
					if(al.isEmpty())
					{
					%>
					<h3 class=" style4">Sorry..!! There is no tweets found</h3>
					<%}
					 String msg=(String)application.getAttribute("msg");
					 if(msg!=null){
					 %><h3 class="style8 style4"> <%=msg%></h3> 
					  <%
					 application.removeAttribute("msg");
					}
					
					connection.close();
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
	  </p>
	  
        
          </div>
          <div class="clr"></div>
        </div>
		<div align="right"><a href="usermain.jsp">Back</a></div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="usermain.jsp">Home</a></li>
            <li><a href="userlogin.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">.</h2>
          <ul class="ex_menu"><li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
