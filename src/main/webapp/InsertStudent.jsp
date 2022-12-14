<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

        <title>Display Alert Message on Button Click Event.</title>
        <script type="text/javascript">
            function showMessage() {
                alert("Hello friends, this is message.");
            }
        </script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="InsertStudent">
<input type="text" placeholder="first name" name="fname">
<br>
<input type="text" placeholder=" last name " name="lname">
<br>

<input type="number" placeholder="Age" name="age">
<br>

<input type="number" placeholder="class number " name="class">
<br>

<input type="submit" value="submit" onclick="myFunction()">
	</form>

	<p id="demo"></p>
	<script>
		function myFunction() {
			document.getElementById("demo").innerHTML = "student inserted";
		}
	</script>
<br>



<button onclick="window.location.href='main.jsp';" onClick="showMessage()" >
     main page
    </button></td>
</body>
</html>