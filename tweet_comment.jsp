<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> tweets</title>
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
.style4 {
	color: #FF0000;
	font-weight: bold;
}
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
          <h2><span> Users and Tweets   </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="img"></div>
          <div class="article">
            <p align="justify"></p>
<table width="610" align="left"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
	
		<%
	
    
	String s1,s2,s3,s4;
	int i=0,j=0,m=0,n=0;
	
	try 
	{
	String t_name=request.getParameter("name");
	String uname=request.getParameter("uname");
	String id=request.getParameter("id");
	
	if(m==0){
	%>
			<tr>
			    <td  width="181" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Tweeted User</div></td>
			    <td  width="272" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Tweet Name</div></td>
			    <td   width="155" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Tweet Image</div></td>
			</tr>
	<tr>
	<td  width="181" height="0" align="center" valign="middle"><div align="center" class="style4"><%=uname%></div></td>
	 <td  width="272" height="0" align="center" valign="middle"><div align="center" class="style4"><%=t_name%></div></td>
	  <td align="center" valign="middle"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=id%>&type=<%="tweet"%>"/></td>
		</tr>
	
	<%}m=1;
	String sql="select * from comments where tweet_name='"+t_name+"' and username!='"+user+"'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		
		if(n==0){
		
		%>
		
				
				<tr>
				  <td  width="181" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Username</div></td>
				  <td   width="272" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Tweet</div></td>
				  <td  width="155" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Date</div></td>
				</tr>
					<%}%>
				<tr>
						
	   
			  <td  width="181" height="36" align="center" valign="middle" style="color:#000000;"><div align="center" class="style7">
			    <p>
			      <%out.println(s1);%>
			    </p>
			    <p>&nbsp; </p>
			  </div></td>	
			  <td  width="272" height="36" align="center" valign="middle"><div align="center" class="style7"><%out.println(s3);%></div></td>
			  <td  width="155" align="center" valign="middle"><div align="center" class="style7"><%out.println(s4);%></div></td>
		</tr>
					
					<%m=2;
				}
				%>
				 <form id="form1" name="form1" method="post" action="addtweetcomment.jsp?name=<%=t_name%>">
		<tr>
			  <td  width="181" height="110" align="center" valign="middle" style="color:#000000;"><div align="center" class="style4">Enter Your Tweet(Mention # tag with significant word to relate with Semantically Related other Words)</div></td>	
			  <td  width="272" height="110" align="center" valign="middle"><div align="center"><textarea name="cmt" rows="4" cols="40"></textarea></div></td>
			  <td  width="155" align="center" valign="middle"><div align="center"><input type="submit" name="Submit" value="Tweet" /></div></td>
		</tr>  
		 </form>
		 
		  <%
					
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
		<div align="right"><a href="friendtweets.jsp">Back</a></div>
        
        <p class="pages">&nbsp;</p>
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
          <h2 class="star"><br />
          </h2>
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
