<%
String img = "";
String self = "index.php";

if(session.getAttribute("user_type") == "admin" || session.getAttribute("user_type") == "engineer" ){
//	$img = WEB_ROOT . 'images/company_info.jpg';
img = "images/complains.jpg";
}else {
	img = "images/complain.jpg";
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
<p align="center" style="color:#990000;font-size:16px;font-weight:bold;" >Complain Management System</p>
<img src="images/make-online-complaint-btn.jpg"  style="float:left;border:0px; padding:10px;"/>
<p align="left" style="line-height:24px; padding:10px;"><b>Online Complaint Monitoring System (OCMS)</b> is a system operated by the city of Patna, India. A Complaint Management System is one of latest productivity enhancement tools used widely by all organisations wherever there is a need of booking of complaints via operators and analysis of complaints which are made or are pending.
<br/><br/>
Lack of paper movements provides complaint management operations a speed which was never envisaged in manual mode at all. Software allows a booking operator to book and lodge complaints and automatically schedules and prompts operators to source complaint to concerned departments. State of the art management information reports on complaint details and pending complaints with reasons and remarks provides management a better insight to problems and traffic situations of telephone lines. A never before “Report Wizard” not only allows you to define specific reports on demand but also allows you to define your own sorting and analysis parameters which may be more relevant to you but not programmed by us till now.</p>
<p>&nbsp;</p>
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
