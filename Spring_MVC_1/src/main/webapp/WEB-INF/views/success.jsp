<%@page import="org.apache.catalina.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Login  Successfully</h1>

<h1> Your Data Is Recorded</h1>

     <h1>Username is ${user.userName}</h1>
     <h1>Email is ${user.userEmail}</h1>
	
</body>
</html>