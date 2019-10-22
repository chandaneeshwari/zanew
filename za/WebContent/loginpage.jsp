<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style.css" rel="stylesheet"/>
<title>Login</title>
</head>
<body>
<h1  class="header" align="center"> LP BATCH MANAGMENT SYSTEM</h1>
<form name="form" action="${pageContext.request.contextPath}/LoginServlet" method="post">
 <div class="main">
    <p class="sign" align="center">login</p>
<%--     <form class="form1" action=""${pageContext.request.contextPath}/LoginServlet" method="post"> --%>
      <input class="un " type="text" align="center" placeholder="Username" name="username" required="required">
      <input class="pass" type="password" align="center" placeholder="Password" name="password" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-z]).{8,}" title="must contain atleast one number one uppercase lowercase letter and atleast 8 or more characters">
      <p align="center"><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></p>
      <input type="submit" class="submit" align="center">
    
           
                
    
<%-- <p><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></p> --%>

</div>
</form>
</body>
</html>