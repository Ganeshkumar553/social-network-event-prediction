
<%@ include file="connect.jsp"%>


<%
try
{

ResultSet rs=connection.createStatement().executeQuery("SELECT * FROM  tweet_words order by count DESC");
%><html>
<head>
<title></title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>

<div align="center">
    <script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	
	String s1=null;
	
	if(rs.next())
	{
	 s1=rs.getString(2);
	int  s2=rs.getInt(4);
	
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%=s2%>];
        
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.8);
	myChart.setSize(300, 360);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
	
  </script>
  
    
  </div>
</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

