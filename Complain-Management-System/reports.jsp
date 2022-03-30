<%
String img = "";
String self = "index.php";

if(session.getAttribute("user_type") == "admin" || session.getAttribute("user_type") == "engineer" ){
//	$img = WEB_ROOT . 'images/company_info.jpg';
img = "images/complains.jpg";
}else {
	img = "images/complains.jpg";
}
%>
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
<style>
.xyz {
	-moz-border-radius:10px;
	border:#CC9900 solid 1px;
	background-color:#FFFFFF;
	padding:10px;
	width:280px;
	float:left;
	margin-right:30px;
}
.xh2 {
	color:#000033;
	font-size:14px;
}
.xli {
line-height:20px;
}
</style>

<p>&nbsp;</p>
<div class="xyz">
<h2 class="xh2">
Complain Status Details
<ul>
<a href="viewAdminRepo.jsp?id=open"><li class="xli">Open Complains</li></a>
<a href="viewAdminRepo.jsp?id=close"><li class="xli">Close Complains</li></a>
<a href="viewAdminRepo.jsp?id=working"><li class="xli">Working Complains</li></a>
<a href="viewAdminRepo.jsp?id=assign"><li class="xli">Assigned Complains</li></a>
</ul>
</h2>
</div>
<div class="xyz">
<h2 class="xh2">
Detail Reports
<ul>
<a href="viewAdminRepo-detail.jsp?id=engineer"><li class="xli">Employee Details</li></a>
<a href="viewAdminRepo-detail.jsp?id=customer"><li class="xli">Customer Details</li></a>


</ul>
</h2>
</div>

          </td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
