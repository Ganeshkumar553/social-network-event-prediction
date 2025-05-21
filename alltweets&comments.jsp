<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all tweets and comments</title>
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
.style2 {font-size: 40px}
.style4 {font-size: 24px}
.style5 {
	color: #FFFF00;
	font-weight: bold;
}
.style7 {color: #FF0000; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style4">Predicting Hot Events in the Early Period ? through Bayesian Model for Social Networks</span><span class="style2">l</span></a></h1>
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
	  <%String server=(String)application.getAttribute("server");%>
	  
        <ul>
          <li ><a href="servermain.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="#"><span><%=server%></span></a></li>
          <li><a href="serverlogin.jsp"><span>Logout</span></a></li>
      
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
          <h2><span>All  Tweets Comments </span></h2>
          <div class="img"></div>
          <div class="article">
            <p align="justify"> 
            <table width="642" align="left"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
	
		<%
	
    
	String s1,s2,s3,s4;
	int i=0,j=0,m=0;
	
	try 
	{
	
	
	String query="select * from comments"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		
		String sql1="select id from tweets where tweet_name='"+s2+"'"; 
		Statement st1=connection.createStatement();
		ResultSet rs1=st1.executeQuery(sql1);
		if(rs1.next())
		{
		 j=rs1.getInt(1);
		
	
		if(m==0){
		%>
		
				<tr>
				 <td  width="109" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5">Username </div></td>
				  <td  width="97" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5">Tweet Image</div></td>
				  <td  width="97" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5">Tweet Name</div></td>
				  <td   width="206" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5">Tweet Comment</div></td>
				  <td  width="126" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5">Date</div></td>
				</tr>
					<%}%>
			<tr>
			  <td  width="97" height="50" align="center" valign="middle" style="color:#000000;"><div align="center" class="style7"><%out.println(s1);%></div></td>
	  	<td width="109"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=j%>&type=<%="tweet"%>"/></td>

			  <td  width="97" height="50" align="center" valign="middle" style="color:#000000;"><div align="center" class="style7"><%out.println(s2);%></div></td>	
			  <td  width="206" height="50" align="center" valign="middle"><div align="center" class="style7"><%out.println(s3);%></div></td>
			  <td  width="126" align="center" valign="middle"><div align="center" class="style7"><%out.println(s4);%></div></td>
			</tr>
					
					<%m=2;
				}
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


            <div align="right"><a href="servermain.jsp">Back</a></div>
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="servermain.jsp">Home</a></li>
            <li><a href="serverlogin.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
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
