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
.style4 {font-size: 24px}
.style5 {color: #FF0000}
.style6 {
	color: #FFFF00;
	font-weight: bold;
}
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
          <h2><span>  Topic Hot Event Score Details !!! </span></h2>
          <div class="img"></div>
          <div class="article">
            <p align="justify"> 
            <table width="496" align="left"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
	
		<%
	
    
	String s1="",s2="",s3="",s4="",str1="#",result="",s5="";
	int i=0,j=0,m=0;
	
	try 
	{
	
	ArrayList al=new ArrayList();
	String query="SELECT * FROM  tweet_words order by count DESC"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	if( rs.next() )
	{
		
		s1=rs.getString(2);
		s2=rs.getString(4);			
		
		%>
		
				<tr>
		 <td  width="245" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Tweet Key </div></td>
		 <td  width="395" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6">Hot Event  Score</div></td>
				</tr>
					<%}%>
			<tr>
			  <td  width="245" height="50" align="center" valign="middle" style="color:#000000;"><div align="center" class="style5"><%out.println(s1);%></div></td>
		  <td  width="395" height="50" align="center" valign="middle" style="color:#000000;"><div align="center" class="style5"><%out.println(s2);%></div></td>	
			</tr>
					
					
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
