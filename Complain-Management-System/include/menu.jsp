<%
if(session.getAttribute("user_type").equals("customer")){
%>
<div id="ddblueblockmenu">
	  <div class="menutitle">Customer Menu</div>
		  <ul>
			<li><a href="">Welcome,&nbsp;<% out.print(session.getAttribute("user_name")); %></a></li>
			<li><a href="makeComplain.jsp">Make Complains</a></li>
			<li><a href="compDetails.jsp">View Complain Details</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		  </ul>
	  <div class="menutitle">&nbsp;</div>	  
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<% 
}else if(session.getAttribute("user_type").equals("engineer")){
%>
<div id="ddblueblockmenu">
	  <div class="menutitle">Engineers Menu</div>
		  <ul>
			<li><a href="">Welcome,&nbsp;<% out.print(session.getAttribute("user_name"));%></a></li>
			<li><a href="employeeCompDetails.jsp">View Assign Complains</a></li>
			<li><a href="employeeCompClose.jsp">Close Complain</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		  </ul>
	  <div class="menutitle">&nbsp;</div>	  
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
	 
<%
}else if(session.getAttribute("user_type").equals("admin")){
%>
<div id="ddblueblockmenu">
	  <div class="menutitle">Admin Menu</div>
		  <ul>
			<li><a href="">Welcome,&nbsp;<% out.print(session.getAttribute("user_name"));%></a></li>
			<li><a href="adminCompDetails.jsp">Assign Complains</a></li>
			<li><a href="viewEnggDetails.jsp">View Complains</a></li>
			<li><a href="adminCompCloseDetails.jsp">View Close Complain</a></li>
			<li><a href="enggDetails.jsp">Engineer Details</a></li>
			<li><a href="custDetails.jsp">Customer Details</a></li>
			<li><a href="reports.jsp">Reports</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		  </ul>
	  <div class="menutitle">&nbsp;</div>	  
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<% 
}
else{
	response.sendRedirect("index.jsp");
	}
%>