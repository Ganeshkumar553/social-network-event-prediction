<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user login page</title>
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
.style8 {color: #FF0000; font-weight: bold; }
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
        <ul>
          <li ><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="userlogin.jsp"><span>User</span></a></li>
          <li><a href="register.jsp"><span>Register</span></a></li>
          <li><a href="serverlogin.jsp"><span>Tweet Server</span></a></li>
      
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
          <h2><span>Welcome to User Login </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="img"><img src="images/img1.jpg" width="198" height="208" alt="" class="fl" /></div>
          <div class="post_content">
            <p align="justify"> <form action="authentication.jsp?type=<%="user"%>" method="post">
		  
          <table width="418">
            <tr>
              <td width="148" height="48"><span class="style5">User Name (required)</span></td>
                    <td width="258"><input id="name" name="userid" class="text" /></td>
            </tr>
            <tr>
              <td height="44"><span class="style5">Password (required)</span></td>
                <td><input type="password" id="password" name="pass" class="text" /></td>
            </tr>
            <tr>
             <td height="51"></td>
          <td><input name="imageField" type="submit"  class="style4" id="imageField" value="Login" />
            <input name="Reset" type="reset" class="style4" value="Reset" />
            <br />
            <span class="style8">                <br />
            New user?</span><a href="register.jsp">Register </a>               </td>
            </tr>
          </table>
		  </form></p>
            <p class="spec">&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="clr"></div>
          <div class="img"></div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="userlogin.jsp">User</a></li>
            <li><a href="serverlogin.jsp">Server</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <ul class="ex_menu"><li></li>
            <li></li>
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
