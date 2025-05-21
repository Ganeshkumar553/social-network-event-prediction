<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all users and friends  list</title>
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
.style4 {font-size: 24px}
.style5 {color: #FFFF00}
.style6 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style4">Predicting Hot Events in the Early Period ? through Bayesian Model for Social Networks</span></a></h1>
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
          <h2><span>All Users &amp; Friends Group List</span></h2>
          <div class="img"></div>
          <div class="article">
            <p align="justify"> 
            <table width="540" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <tr>
              <td  width="126" height="37" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style11 style10"><strong>User Image </strong></div></td>
			  <td  width="81" height="37" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style11 style10"><strong>Username</strong></div></td>
              <td  width="126" height="37" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style11 style10"><strong>Friend Image </strong></div></td>
              <td   width="94" height="37" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style11 style10"><strong>Friend Name </strong></div></td>
              <td  width="97" height="37" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style11 style10"><strong>Status</strong></div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select rfrom,rto,status from friends"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		
			String query1="select id from user where username='"+s1+"'"; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(query1);
			if(rs1.next())
			{
				i=rs1.getInt(1);
			%>
            <tr>
			<td width="126" valign="middle" ><div class="style7 style6" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"/></a></div></td>
			 <%}%>
              <td  width="81" height="56" align="center" valign="middle" ><span class="style6">
                <%out.println(s1);%>
              </span></td>
              <%
			    String query2="select id from user where username='"+s2+"'"; 
				Statement st2=connection.createStatement();
				ResultSet rs2=st2.executeQuery(query2);
				if(rs2.next())
				{
					i=rs2.getInt(1);
			  %>
			  <td width="126" valign="middle" ><div class="style7 style6" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"/></a></div></td>
			 <%}%>
              <td  width="94" height="56" align="center" valign="middle"><span class="style6">
                <%out.println(s2);%>
              </span></td>
              <td  width="97" height="56" align="center" valign="middle"><span class="style6">
                <%out.println(s3);%>
              </span></td>
            </tr>
            <%
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
