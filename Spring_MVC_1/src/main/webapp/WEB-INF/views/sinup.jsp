<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <div>
  
    <section border="3px">
     <form action="proccess" method="post">
     <label>UserName</label>
      <input type="text" placeholder="enter name" name="userName">
      <br>
       <label>UserEmail</label>
      <input type="email" placeholder="enter email" name="userEmail">
      <br>
       <label>UserPassword</label>
      <input type="text" placeholder="enter password" name="userPassword">
      <br>
     <input type="submit" value="Login">
     </form>
    </section>
  
  </div>
</body>
</html>