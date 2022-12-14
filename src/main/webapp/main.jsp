<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Main</title>

<style>
h1 {
	font-size: 40px;
}

td, button {
	font-size: 20px;
}
</style>



</head>
<body>
	<%-- 

<form action="GetStudentsServlet">
<input type="submit" value="view Student">
</form>
<br>
<form action="TeacherServlet">
<input type="submit" value="view Teacher">
</form>

	<h1>
		<b>Available choices
	</h1>
	<table style="width: 100%">
		<tr bgcolor="#c2c9ff">
		<tr>
			<td><a href="GetStudentsServlet"> view Student</a></td>
			</th>
		</tr>
		<tr>
			<td><a href="TeacherServlet"> view Teacher</a></td>
		</tr>
		<tr>
			<td><a href="SubjectServlet"> view subject</a></td>
		</tr>
		<tr>
			<td><a href="ClassServlet"> view class</a></td>
		</tr>
		<tr>
			<td><a href="InsertStudent.jsp"> Insert Student</a></td>
		</tr>
		<tr>
			<td><a href="InsertTeacher.jsp"> Insert Teacher</a></td>
		</tr>
		<tr>
			<td><a href="Insertsubjects.jsp"> Insert subject</a></td>
		</tr>
		<tr>
			<td><a href="test"> Insert class</a></td>
		</tr>
		<tr>
			<td><a href="Testcon"> view report</a></td>
		</tr>
		<tr>
			<td><br></td>
		</tr>
		<tr>
			<td><button onclick="window.location.href='index1.jsp';">
					logout</button></td>
		</tr>
		</tr>
	</table>
	
	<div class="list-type1">
		<ol>
			<li><a href="Insertsubjects.jsp"> Insert subject</a></li>
			<li><a href="test"> Insert class</a></li>
			<li><a href="Testcon"> view report</a></li>
		</ol>
	</div>


--%>

	<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap 5 Website Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
.fakeimg {
	height: 200px;
	background: #aaa;
}
</style>
</head>
<body>

	<div class="p-5 bg-light text-white text-center">
		<h1 style="color: black">
			<b>Available choices
		</h1>

		<div class="container mt-5">
			<div class="row">
				<div class="col-sm-6">

					<div class="fakeimg">
						<a href="GetStudentsServlet"> view Student</a> <br> <br>
						<a href="TeacherServlet"> view Teacher</a> <br> <br> <a
							href="SubjectServlet"> view subject</a> <br> <br> <a
							href="ClassServlet"> view class</a>

					</div>


					<hr class="d-sm-none">
				</div>
				<div class="col-sm-6">

					<div class="fakeimg">

						<a href="InsertStudent.jsp"> Insert Student</a>
						</td> <br> <br> <a href="InsertTeacher.jsp"> Insert
							Teacher</a> <br> <br> <a href="Insertsubjects.jsp">
							Insert subject</a> <br> <br> <a href="test"> Insert
							class</a>

					</div>


				</div>
			</div>
			<br> <a href="Testcon"> view report</a> <br> <br>
			<button onclick="window.location.href='index1.jsp';">logout
			</button>

		</div>
</body>
</html>



</body>
</html>