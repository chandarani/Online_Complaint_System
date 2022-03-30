<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
<%
String connectionURL = "jdbc:mysql://localhost:3306/complain_db";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
String suser = "", stype = "";
String username = request.getParameter("txtUserName");
String password = request.getParameter("txtPassword");
String usertype = request.getParameter("utype");

Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL,"root","");
statement = connection.createStatement();
if(usertype.equals("admin")){
	String str = "SELECT * FROM tbl_admin where username='"+username+"' and password='"+password+"'";
	//out.print(str);
	rs = statement.executeQuery(str);
	if(rs.next()) {
		
		session.setAttribute("user_id", 0);		
		session.setAttribute("user_name", "Administrator");
		session.setAttribute("user_type", "admin");
		response.sendRedirect("index1.jsp");
	}
	else{
	%>
	<TABLE style="background-color: #A9A9A9;" WIDTH="30%" align="center" border="1">
		      <tr><th>Admin Wrong username or password!!!</th></tr>
					<tr><th><a href="login.jsp" >Back</a></th></tr>
		   </table>
	
	<%
	rs.close();
	}
}
else if(usertype.equals("engineer")){
	String str = "SELECT  eid, ename FROM tbl_engineer WHERE ename = '"+username+"' AND epass = '"+password+"'";
	out.print(str);
	rs = statement.executeQuery(str);
	if(rs.next()) {
		session.setAttribute("user_id", rs.getString("eid"));		
		session.setAttribute("user_name", rs.getString("ename"));
		session.setAttribute("user_type", usertype);
		response.sendRedirect("index1.jsp");
	}
	else{
	%>
	<TABLE style="background-color: #A9A9A9;" WIDTH="30%" align="center" border="1">
		      <tr><th>Wrong username or password!!!</th></tr>
					<tr><th><a href="index.jsp" >Back</a></th></tr>
		   </table>
	
	<%
	rs.close();
	}
}
else if(usertype.equals("customer")){
	
	String str = "SELECT  cid, cname FROM tbl_customer WHERE cname = '"+username+"' AND cpass = '"+password+"'";
	out.print(str);
	rs = statement.executeQuery(str);
	if(rs.next()) {
		session.setAttribute("user_id", rs.getString("cid"));		
		session.setAttribute("user_name", rs.getString("cname"));
		session.setAttribute("user_type", usertype);
		response.sendRedirect("index1.jsp");
	}
	else{
	%>
	<TABLE style="background-color: #E3E4FA;" WIDTH="30%" align="center" border="1">
		      <tr><th>Wrong username or password!!!</th></tr>
					<tr><th><a href="login.jsp" >Back</a></th></tr>
		   </table>
	
	<%
	rs.close();
	}
}


%>
</body>
</html>