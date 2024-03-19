<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnore="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="Red">
<center >
<h2>Hello Spring Class</h2>
	
	<%
	Integer id=(Integer)request.getAttribute("id");
	String name=(String) request.getAttribute("name");
	LocalDateTime ldt=(LocalDateTime) request.getAttribute("time");
	%>
	<h1>Id is : <%=id %></h1>
	<h1>Name is : <%=name %></h1>
	<h1>Time is : <%=ldt %></h1>
	<h1>------------</h1>
 
 
</center>

<h1>${id}</h1>
</body>
</html>