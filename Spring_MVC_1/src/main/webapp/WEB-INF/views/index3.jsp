<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Java Spring Mvc</h1>
<%

 int x=10; //expression
 String a="ABCD";
 List<String> b=new ArrayList<String>();
 b.add("Java");
 b.add("html");
 b.add("sql");
%>
<h1> the value of x is:--<%=x %></h1>
<h1> the value of x is:--<%= a.charAt(2) %></h1>
<h1> the value of ArrayList is:--<%=b %></h1>

 <% 
  for(String c:b)
  {
	//  out.println(c)

	
  
 %>
   <h1>the value of ArrayList is:--<%=c %></h1>
 <%
   }
 
 %>>

</body>
</html>