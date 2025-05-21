<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all users list</title>
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
          <h2><span>All Users List</span></h2>
          <div class="img"></div>
          <div class="article">
            <p align="justify"> 
            <table width="540" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <tr>
              <td  width="103" height="42" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style9"><strong>Username</strong></div></td>
              <td  width="156" height="42" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style9"><strong>Email</strong></div></td>
              <td   width="75" height="42" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style9"><strong>status</strong></div></td>
              <td  width="122" height="42" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style9"><strong>View</strong></div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select * from user"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(4);
		s3=rs.getString(10);
	
			%>
            <tr>
              <td  width="103" height="56" align="center" valign="middle" ><span class="style6">
                <%out.println(s1);%>
              </span></td>
              <td  width="156" height="56" align="center" valign="middle"><span class="style6">
                <%out.println(s2);%>
              </span></td>
              <%
						if(s3.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td  width="75" height="56" align="center" valign="middle"> <a href="conformuser.jsp?mid=<%=i%>" class="style6">waiting&nbsp;</a></td>
              <%
						}
						else
						{
						%>
              <td  width="122" height="56" align="center" valign="middle"><span class="style6">
                <%out.println(s3);%>
              </span></td>
              <%
						}
						
						%>
              <td  width="68" valign="middle" height="56" style="color:#000000;"align="center"><a href="userdetails.jsp?mid=<%=i%>" class="style6">more info..&nbsp;</a></td>
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
