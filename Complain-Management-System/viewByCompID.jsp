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
	Connection connection = null, conn = null;
	Statement statement = null, stmt = null;
	ResultSet rs = null, rs1 = null;

	Class.forName("com.mysql.jdbc.Driver").newInstance();
	connection = DriverManager.getConnection(connectionURL,"root","");
	statement = connection.createStatement();
	String str = "SELECT * FROM tbl_complains WHERE cid = '"+request.getParameter("compid")+"'";
	rs = statement.executeQuery(str);
	//$cust_id = (int)$_SESSION['user_id'];
	if(rs.next()){
	%>
<form action="processAssignComplain.jsp" method="post">
<table width="600" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#336699" class="entryTable">
  <tr id="entryTableHeader">
    <td>:: View Complains Details::</td>
  </tr>
  <tr>
    <td class="contentArea"><div class="errorMessage" align="center"></div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="text">
          <tr align="center">
            <td colspan="2">
			<input type="hidden" name="compId" value="<% out.print(rs.getString("cid"));  %>"/>			</td>
          </tr>
          <tr class="entryTable">
            <td class="label">&nbsp;Complainer Name </td>
            <td class="content"><font color="#0066FF"><b><% out.print(rs.getString("cust_name"));  %></b></font></td>
          </tr>
          <tr class="entryTable">
            <td class="label">&nbsp;Complain Title </td>
            <td class="content"><font color="#FF0000"><b><% out.print(rs.getString("comp_title"));  %></b></font></td>
          </tr>

          <tr class="entryTable">
            <td valign="top" class="label">&nbsp;Complain Description .</td>
            <td class="content">
			<textarea name="compDesc" cols="50" rows="6" class="box" id="compDesc"  readonly="readonly"><% out.print(rs.getString("comp_desc"));  %></textarea></td>
          </tr>
          <tr>
            <td valign="top" class="label">&nbsp;Status</td>
            <td class="content"><font color="#66FF00"><b><% out.print(rs.getString("status"));  %></b></font></td>
          </tr>
          <tr>
            <td valign="top" class="label">&nbsp;Date Of Creation</td>
            <td class="content">
			<% out.print(rs.getString("create_date"));  %>			</td>
          </tr>
          
		  <tr>
            <td valign="top" class="label">&nbsp;Assign Complain To</td>
            <td class="content">
			<select name="engId" class="box" id="engId">
				<%
					conn = DriverManager.getConnection(connectionURL,"root","");
					stmt = conn.createStatement();
					String str1 = "SELECT eid, ename	FROM tbl_engineer";
					rs1 = stmt.executeQuery(str1);
					while(rs1.next()){
				%>
				<option value="<% out.print(rs1.getString("eid")); %>"><% out.print(rs1.getString("ename")); %></option>
				<% } %>
			</select>			</td>
          </tr>
          
		  <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td width="200">&nbsp;</td>
            <td width="372">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input name="btnLogin" type="submit" id="btnLogin" value=" Assing Complain "></td>
          </tr>
      </table></td>
  </tr>
</table>
</form>
<% 
}//while
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

