<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*, java.util.*,java.text.SimpleDateFormat,java.text.ParseException" errorPage="" %>
<%
String img = "";
String self = "index.php";

if(session.getAttribute("user_type") == "admin" || session.getAttribute("user_type") == "engineer" ){
//	$img = WEB_ROOT . 'images/company_info.jpg';
	img = "images/complains.jpg";
}
else {
	img = "images/complains.jpg";
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Complain Management System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="include/admin.css" rel="stylesheet" type="text/css">
<link href="include/menu.css" rel="stylesheet" type="text/css">
<link href="include/main.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/javascript" src="library/common.js"></script>
<script language="JavaScript" type="text/javascript" src="library/complains.js"></script>
</head>
<body>
<br/><br/>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="1" class="graybox">
  <tr>
    <td colspan="2"><img src="<% out.print(img); %>" width="900" height="120"></td>
  </tr>
  <tr>
    <td width="20%" valign="top" class="navArea"><p>&nbsp;</p>
 	<jsp:include page="include/menu.jsp"/>
        
	</td>
    <td width="720" valign="top" class="contentArea"><table width="100%" border="0" cellspacing="0" cellpadding="20">
        <tr>
          <td>
<h3>Report - Admin View</h3>
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="text">
    <tr align="center" id="listTableHeader">
      <td width="583">Complain Title</td>
      <td width="303">Eng Name </td>
      <td width="260">Customer Name </td>
      <td width="260">Date </td>
      <td width="150">Status</td>
    </tr>

<%
	String connectionURL = "jdbc:mysql://localhost:3306/complain_db";
	Connection connection = null;
	Statement statement = null;
	ResultSet rs = null;

	Class.forName("com.mysql.jdbc.Driver").newInstance();
	connection = DriverManager.getConnection(connectionURL,"root","");
	statement = connection.createStatement();
	 
	String str = "SELECT * FROM tbl_complains	WHERE status = '"+request.getParameter("id")+"'	AND  eng_name != ''	ORDER BY create_date DESC";
	rs = statement.executeQuery(str);
	//$cust_id = (int)$_SESSION['user_id'];
	while(rs.next()){
		java.util.Date date;
		Timestamp timestamp = rs.getTimestamp("close_date");
		//if (timestamp != null)
    		date = new java.util.Date(timestamp.getTime());
	%>
    
    <tr class="" style="height:25px;">
      <td>&nbsp;<% out.print(rs.getString("comp_title")); %></td>
      <td width="303" align="center"><% out.print(rs.getString("eng_name")); %></td>
      <td width="260" align="center"><% out.print(rs.getString("cust_name")); %></td>
      <td width="260" align="center"><% out.print(date); %></td>
      <td width="150" align="center"><% out.print(rs.getString("status")); %></td>
    </tr>
    <%
	} // end while
	%>
    <tr>
      <td colspan="5">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="5" align="right">&nbsp;</td>
    </tr>
  </table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>


          </td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>

