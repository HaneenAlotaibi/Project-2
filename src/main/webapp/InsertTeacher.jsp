<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Teacher</title>
</head>
<body>
<form action="InsertTeacher">
<input type="text" placeholder="first name" name="fname">
<br>
<input type="text" placeholder=" last name " name="lname">
<br>

<input type="number" placeholder="Age" name="age">
<br>


<input type="submit" value="submit" onclick="myFunction()"">
	</form>

	<p id="demo"></p>
	<script>
		function myFunction() {
			document.getElementById("demo").innerHTML = "teacher inserted";
		}
	</script>
<br>
<button onclick="window.location.href='main.jsp';">
     main page
    </button></td>
</body>
</html>