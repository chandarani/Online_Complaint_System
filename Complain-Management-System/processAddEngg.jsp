<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
<%
	
	
	String connectionURL = "jdbc:mysql://localhost:3306/complain_db";
	Connection connection = null;
	Statement statement = null;

	Class.forName("com.mysql.jdbc.Driver").newInstance();
	connection = DriverManager.getConnection(connectionURL,"root","");
	statement = connection.createStatement();
	String str = "INSERT INTO tbl_engineer (ename, epass, address, email, e_mobile, date_time) VALUES ('"+request.getParameter("EngineerName")+"', '"+request.getParameter("Password")+"', '"+request.getParameter("Address")+"', '"+request.getParameter("Email")+"', '"+request.getParameter("Mobile")+"', NOW())";
					
					//rs1 = stmt.executeQuery(str1);
				int success = statement.executeUpdate(str);
				statement.close();
				if (success != 0) {
				%>
	           <br>
	           <TABLE style="background-color: #E3E4FA;" WIDTH="30%" align="center" border="1">
		      <tr><th>Data inserted successfully in database.</th></tr>
					
					
		   </table>
              <%
              }
				
				
%>
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

