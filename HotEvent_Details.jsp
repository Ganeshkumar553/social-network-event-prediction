<style type="text/css">
<!--
.style1 {
	color: #FFFF00;
	font-weight: bold;
}
.style2 {color: #FF0000}
-->
</style>

            <table width="496" align="left"  cellpadding="0" cellspacing="0" bordercolor="#FF0000" bgcolor="#FFFF00"  >
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
		 <td  width="245" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1">Tweet Key </div></td>
		 <td  width="395" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1">Prediction of Hot Event Score </div></td>
				</tr>
					<%}%>
			<tr>
			  <td  width="245" height="50" align="center" valign="middle" style="color:#000000;"><div align="center" class="style2"><%out.println(s1);%></div></td>
		  <td  width="395" height="50" align="center" valign="middle" style="color:#000000;"><div align="center" class="style5 style2"><%out.println(s2);%></div></td>	
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
			