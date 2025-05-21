<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>search results page</title>
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
.style6 {color: #FFFFFF}
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
          <h2><span>Search Results </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="img"></div>
          <div class="article">
            <p align="justify"> 
            </p>
<p class="spec"><table width="342" align="left"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
	
    
						String s1,s2,s3,s4;
						int i=0;
						String fname=request.getParameter("key");
						//application.setAttribute("key",fname);
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						Date now = new Date();
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
       
						try 
						{
							
						   	String status=null;
							String status1=null;
							ArrayList al=new ArrayList();
						   	String sql="select * from user where username LIKE '%"+fname+"%' and username!='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		
							while(rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(3);
								status ="request";
								al.add(s1);
								
								String sql1="select * from friends where (rfrom='"+user+"' and rto='"+s1+"') || (rfrom='"+s1+"' and rto='"+user+"')";
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(sql1);
								if(rs1.next())
									{
										String rfrom =rs1.getString(2);
										String rto =rs1.getString(3);
										status1 = rs1.getString(4);
										
										
										
										if(status1.equalsIgnoreCase("waiting"))
										{
											status="already sent";
										}
										else if(status1.equalsIgnoreCase("Accepted"))
										{
											status="Already Friend";
										}
										
										
									}	
								
								
					%>
          
			<tr>
					<td width="126" rowspan="3" valign="middle" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"  />
			  </a></div>					</td>
		  </tr>
             
             <tr> <td width="50" height="65" valign="middle" bgcolor="#FF0000" style="color:#000000;"><div align="center" class="style6">Name</div></td>
			 <td width="94" valign="middle" height="65" style="color:#000000;"><div align="center">
			   <%out.println(s1);%>
			   </div></td></tr>
				   <tr>
				    <td width="50" height="26" valign="middle" bgcolor="#FF0000" style="color:#000000;"><div align="center" class="style6">Status</div></td>
              <%
						if(status.equals("Already Friend")){
						%>
              <td  width="94" valign="middle" height="26" style="color:#000000;"align="center"><div align="center"><%=status %>&nbsp;</div></td>
              <%
						}else if(status.equals("already sent")){
						%>
              <td  width="39" valign="middle" height="26" style="color:#000000;"align="center"><div align="center"><%=status %>&nbsp;</div></td>
              <%
						}
						else{
						
						%>
              <td  width="31" valign="middle" height="26" style="color:#000000;"align="center"><div align="center"><a href="updaterequest.jsp?username=<%=s1%>&id=<%=i%>"><%=status %>&nbsp;</a></div></td>
              <%}
						%>
            </tr>
            <%
				
						/*String sql3="insert into search_history(username,keyword,dt)values('"+user+"','"+fname+"','"+dt+"')";
						Statement st3=connection.createStatement();
						st3.executeUpdate(sql3);*/
							
					}
					if(al.isEmpty())
					{
					%>
					<h3 class="style4"> No results found </h3>
					
					<%}
					
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
		<div align="right"><a href="searchfriend.jsp">Back</a></div>
        
        <div class="article">
          <div class="img"></div>
          <div class="clr"></div>
        </div>
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
