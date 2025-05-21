<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user main page</title>
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
.style5 {	color: #FF0000;
	font-weight: bold;
	font-size: 18px;
}
.style6 {color: #FF0000; font-size: 24px;}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style6">Predicting Hot Events in the Early Period  through Bayesian Model for Social Networks</span></a></h1>
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
          <h2><span>Welcome to User Main </span>::-><%=user%></h2>
          <p class="infopost">&nbsp;</p>
          <p class="infopost"><span class="style5"> Prediction of Hot Event Score Details </span></p>
          <p class="infopost">
            <iframe width="555" height="120" src="HotEvent_Details.jsp">
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            </iframe>
          </p>
          <p class="infopost">&nbsp;</p>
          <div class="img"></div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">User Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="index.html">Home</a></strong></li>
            <li><strong><a href="userdetails1.jsp">View Your Profile</a></strong></li>
            <li><strong><a href="searchfriend.jsp">Search Friend </a></strong></li>
            <li><strong><a href="viewrequests.jsp">View Requests</a></strong></li>
            <li><strong><a href="createtweet.jsp">Create Tweets</a></strong></li>
            <li><strong><a href="mytweets.jsp">View My Tweets</a></strong></li>
            <li><strong><a href="friendtweets.jsp">View Friends Tweets and comment </a></strong></li>
            <li><strong><a href="friends.jsp">View Friends Details</a>  </strong></li>
            <li><strong><a href="userlogin.jsp">Logout</a></strong></li>
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
