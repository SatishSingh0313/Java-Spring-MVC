<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<center>
<body bgcolor="red">

<h2>Hello World!</h2>
<%
	String name=(String)request.getAttribute("name");
	Integer rollnum=(Integer) request.getAttribute("id");
	List<String> friends=(List<String>)request.getAttribute("f");
%>
<h1>Name is : <%=name %></h1>
<h2>RollNumber is : <%=rollnum %></h2>

<%
	for(String s:friends)
	
	{
		
%>

<h1>The Friends are :- <%=s %><h1/>
<%
	}
%>
	


</center>
</body>
</html>