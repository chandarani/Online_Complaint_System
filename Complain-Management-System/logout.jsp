<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*, java.lang.*, java.util.Calendar" errorPage="" %>
        	<%
			 HttpSession newsession = request.getSession(false);
			 if(newsession != null){
				 newsession.invalidate();
				 //session.getAttribute("userid") = null;
				 }
			response.sendRedirect("index.jsp");
			%>
        
