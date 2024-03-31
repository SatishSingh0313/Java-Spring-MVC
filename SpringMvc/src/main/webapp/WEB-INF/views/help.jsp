<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>help</title>
</head>

<body>
<h1>This is a Help Page</h1>

	<%
   /* String name=(String)request.getAttribute("name");
	Integer id=(Integer)request.getAttribute("id");
	LocalDateTime time=(LocalDateTime)request.getAttribute("time");*/
	%>
	
	<h1>
	Name :
	${name}
	<%-- <%=id %>  --%>
	</h1>
	
	<h1>
	Id :
	${id}
	<%--  <%=name %>  --%>
	</h1>
	
	<h1>
	Date & Time:
	${time.toString()}
	<%-- <%=time.toString()%> --%>
	</h1>
	<hr>
	
	${marks}
</body>

</html>