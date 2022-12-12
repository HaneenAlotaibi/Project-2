<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.ArrayList"%>
<%@page import="com.Haneen.project.Teacher"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert class</title>
</head>
<body>
 <form action="InsertClass">
<input type="text" placeholder="Teacher name" name="name">
<br>
<input type="text" placeholder=" subject name " name="subject">
<br>

<input type="number" placeholder="Time" name="time">
<br>

<input type="submit" value="submit">
</form>
</body>
</html>