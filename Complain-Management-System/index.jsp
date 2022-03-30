<!doctype html>
<html>
<head>
<title>Complain Management System- Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="include/admin.css" rel="stylesheet" type="text/css">
<link href="include/style.css" rel="stylesheet" type="text/css">
<link href="include/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<br/>
<br/>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="1" class="graybox">
 <tr> 
  <td><img src="images/complain.jpg" width="900" height="120"></td>
 </tr>
 <tr> 
  <td valign="top"> <table width="100%" border="0" cellspacing="0" cellpadding="20">
    <tr> 
     <td class="contentArea"> 
	 
	 <form method="post" name="frmLogin" id="frmLogin" action="check_login.jsp">
       <p>&nbsp;</p>
       <table width="350" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#336699" class="entryTable">
        <tr id="entryTableHeader"> 
         <td>:: User Login ::</td>
        </tr>
        <tr> 
         <td class="contentArea"> 
		 <div class="errorMessage" align="center"></div>

		  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="text">
           <tr align="center"> 
            <td colspan="3">&nbsp;</td>
           </tr>
           <tr class="text"> 
            <td width="100" align="right">User Name</td>
            <td width="10" align="center">:</td>
            <td><input name="txtUserName" type="text" class="box" id="txtUserName"  size="30" maxlength="40"></td>
           </tr>
           <tr>
             <td align="right">Password</td>
             <td align="center">:</td>
             <td><input name="txtPassword" type="password" class="box" id="txtPassword" size="30" maxlength="40"></td>
           </tr>
           <tr> 
            <td width="100" align="right">User Type </td>
            <td width="10" align="center">:</td>
            <td><label>
              <select name="utype" class="box">
			  <option >&nbsp;&nbsp;--- Select User --- &nbsp;</option>
			  <option value="admin">&nbsp;&nbsp; Administrator &nbsp;</option>
			  <option value="customer">&nbsp;&nbsp; Customer &nbsp;</option>
			  <option value="engineer">&nbsp;&nbsp; Engineer &nbsp;</option>
              </select>
              </label></td>
           </tr>
           <tr>
             <td colspan="2">&nbsp;</td>
             <td>&nbsp;</td>
           </tr>
           <tr>
             <td colspan="2">&nbsp;</td>
             <td><div align="right">New Customer <a href="register.jsp">Register Here</a> </div></td>
           </tr>
           <tr>
             <td colspan="3"><div align="right"><a href="forget-password.jsp">Forget Password</a> </div></td>
             </tr>
           <tr> 
            <td colspan="2">&nbsp;</td>
            <td><input name="btnLogin" type="submit" id="btnLogin" value=" Login Now " style="font-size:14px;color:#0066FF;padding:5px 8px;"></td>
           </tr>
          </table></td>
        </tr>
       </table>
       <p>&nbsp;</p>
      </form></td>
    </tr>
   </table></td>
 </tr>
</table>

</body>
</html>
