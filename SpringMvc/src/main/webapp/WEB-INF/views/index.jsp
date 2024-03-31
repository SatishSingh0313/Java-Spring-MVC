<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>home</title>
</head>
<body>

<h1>This is a Home Page</h1>

<%
  String name=(String)request.getAttribute("name");
  Integer id=(Integer)request.getAttribute("id");
  
  List<String>friends=(List<String>)request.getAttribute("fr");
%>
<h1>Name :<%=name%></h1>
<h1>Id :<%=id%></h1>


	 <%
       for(String s:friends){
	  %>
  
	<h1><%=s%></h1>

	   <%
  		 }
 	   %>

</body>
</html>