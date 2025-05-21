<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user profile details</title>
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
        <h1><a href="index.html"><span class="style4">When to Make a Topic Popular Again? A Temporal Model for Topic Re-hotting Prediction in Online Social Networks</span></a></h1>
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
          <h2><span> User Profile Details </span></h2>
          <div class="img"></div>
          <div class="article">
            <p align="justify"> 
           <table width="515" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
	
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						String id = request.getParameter("id");
					//	String user=(String )application.getAttribute("user");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where id='"+id+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(8);
								

					%>
					<tr>
					<td width="226" rowspan="7"><div class="style7" style="margin:10px 13px 10px 13px;" >
				 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:200px; height:200px;"/></div></td>
					</tr>
					
					<tr>
					  <td  width="125" height="48" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style14 style7 style8 style5" style="margin-left:20px;">Name</div></td>
	  <td  width="156" valign="middle" height="48" ><div align="left" class="style11 style6" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					<tr>
					  <td  width="125" height="48" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style14 style7 style8 style5" style="margin-left:20px;">E-Mail</div></td>
					  <td  width="156" valign="middle" height="48" ><div align="left" class="style11 style6" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
					  <td  width="125" height="51" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style14 style7 style8 style5" style="margin-left:20px;">Mobile</div></td>
					  <td  width="156" valign="middle" height="51"><div align="left" class="style11 style6" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
<td  width="125" height="46" align="left" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style14 style7 style8 style5" style="margin-left:20px;">Date Of Birth</div> </td>                    	
<td  width="156" align="left" valign="middle" height="46"><div align="left" class="style11 style6" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					<tr>
					  <td  width="125" height="59" align="left" valign="middle" bgcolor="#FF0000" style="color: #00CC99;"><div align="left" class="style14 style7 style8 style5" style="margin-left:20px;">Address</div></td>
					  <td  width="156" align="left" valign="middle" height="59"><div align="left" class="style11 style6" style="margin-left:20px;"><%out.println(s5);%></div></td>
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


            <div align="right"><a href="friends.jsp">Back</a></div>
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
            <li><a href="usermain.jsp">Home</a></li>
            <li><a href="userlogin.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star"><br />
          </h2>
          <ul class="ex_menu"><li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="rf">&nbsp;</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
