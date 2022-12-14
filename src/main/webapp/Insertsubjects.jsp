
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert subject</title>
</head>
<body>
<form action="Insertsubjects">
<input type="text" placeholder="subject name" name="name">
<br>
<input type="submit" value="submit" onclick="myFunction()"">
	</form>

	<p id="demo"></p>
	<script>
		function myFunction() {
			document.getElementById("demo").innerHTML = "student inserted";
		}
	</script>
<br>
<button onclick="window.location.href='main.jsp';">
     main page
    </button></td>
</body>
</html>