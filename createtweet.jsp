<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>create tweets</title>
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
.style6 {color: #FFFF00}
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
          <h2><span>Create Tweet   </span></h2>
          <div class="img"></div>
          <div class="article">
            <p align="justify"></p>
<table width="497" align="left"  cellpadding="0" cellspacing="0"  >
		  <%
	try 
	{
	
	%>
	
				 <form action="inserttweet.jsp" method="post" enctype="multipart/form-data">
			      
                    <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FF0000"><span class="style6"><strong>Tweet  Name or Title</strong></span> </td>
                      <td width="347"><input id="tname" name="tname" class="text" /></td>
                    </tr>
                   
                   <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FF0000"><span class="style6"><strong>Select Image </strong></span></td>
                      <td><input name="pic" type="file" id="file"  onchange="loadFileAsText()" size="29"></td>
                   </tr>
                  
					 <tr>
                      <td height="63" align="left" valign="middle" bgcolor="#FF0000"><span class="style6"><strong>Tweet Description </strong></span></td>
                      <td>   <textarea name="des" id="des" cols="40" rows="5"></textarea></td>
                    </tr>
					 

                    <tr>
                      <td height="44" align="left" valign="middle"><p>&nbsp;</p></td>
                      <td align="center" valign="middle"><div align="right">
                    <p>&nbsp;</p>
                          <input name="submit" type="submit" value="Create" />
                        </p>
                      </div></td>
                    </tr>
			  </form>
			 
	     
		   <%	String mesg=(String)application.getAttribute("mesg");
			if(mesg!=null){
			%>
			<h3 class="style4" ><%=mesg%></h3>
			<%
			application.removeAttribute("mesg");
			}
			
					%> </table>
<%			
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
    
</p>
        
          </div>
          <div class="clr"></div>
        </div>
		  <div align="right"><a href="usermain.jsp">Back</a></div>
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
