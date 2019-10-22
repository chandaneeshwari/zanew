
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>LP Page</title>
<style >
body{
background-color:orange;
}
</style>
</head>
<% //In case, if User session is not set, redirect to Login page.
if((request.getSession(false).getAttribute("LP")== null) )
{
%>
<jsp:forward page="Login.jsp"></jsp:forward>
<%} %>

<body>
<center><h2>LP's Home</h2></center>
<h1 align="center"> Welcome <%=request.getAttribute("userName") %></h1>
<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>
</body>
</html>