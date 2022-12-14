<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Haneen.project.Teacher"%>
<%@page import="com.Haneen.project.Student"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert class</title>
</head>
<body>
	<form  action="InsertClass">
		<input type="text" placeholder="Teacher name" name="teacher">
		<br> <input type="text" placeholder=" subject name "
			name="subject"> <br> <input type="text"
			placeholder="Time" name="time"> <br> <input
			type="submit" value="submit" onclick="myFunction()"">
	</form>

	<p id="demo"></p>
	<script>
		function myFunction() {
			document.getElementById("demo").innerHTML = "class inserted";
		}
	</script>

	<br>
	<button onclick="window.location.href='main.jsp';">main page</button>
	</td>
</body>
</html>