<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Haneen.project.ClassData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Haneen.project.StudentClass"%>
<%@page import="com.Haneen.project.GetStudentsServlet"%>
<%@page import="com.Haneen.project.Teacher"%>

<!DOCTYPE html>
<html>
<head>
<style>
table {
	border-collapse: collapse;
	float: left
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #D6EEEE;
}
</style>
<meta charset="ISO-8859-1">
<title>Students List</title>
</head>
<body>
	<%-- <jsp:forward  page="GetStudentsServlet.java"></jsp:forward > --%>



	<%-- Fetching the attributes of the request object
             which was previously set by the servlet 
              "StudentServlet.java"
        --%>


	<table border="1" align="center">
		<tr>
			<th><b>ID</b></th>
			<th><b>Teacher</b></th>
			<th><b>Subject</b></th>
			<th><b>Time</b></th>
		</tr>
		<%-- Fetching the attributes of the request object
             which was previously set by the servlet 
              "StudentServlet.java"
        --%>
		<%
		ArrayList<ClassData> ClassDataslist = (ArrayList<ClassData>) request.getAttribute("ClassDatassList");
		for (ClassData c : ClassDataslist) {
		%>
		<%-- Arranging data in tabular form
        --%>
		<tr>
			<td><%=c.id%></td>
			<td><%=c.teacher%></td>
			<td><%=c.subject%></td>
			<td><%=c.time%></td>
		</tr>
		<%
		}
		%>
	</table>



	<table border="1" align="center">

		<%-- Fetching the attributes of the request object
             which was previously set by the servlet 
              "StudentServlet.java"
        --%>
		<%
		ArrayList<String> slist = new ArrayList<String>();
		ArrayList<String> slist2 = new ArrayList<String>();
		ArrayList<String> slist3 = new ArrayList<String>();
		ArrayList<StudentClass> studentslist = (ArrayList<StudentClass>) request.getAttribute("studentsList");
		for (StudentClass s : studentslist) {

			System.out.println(s.classs);
			if (s.classs == 1)
				slist.add(s.fname);
			if (s.classs == 2)
				slist2.add(s.fname);
			if (s.classs == 4)
				slist3.add(s.fname);
		%>
		<%-- Arranging data in tabular form
        --%>



		<%
		}
		%>
	
		<tr>
			<th><b>student</b></th>
		</tr>
		<tr>


			<td><%=slist.get(0)%></td>
			<td><%=slist.get(1)%></td>
			<td><%=slist.get(2)%></td>
		</tr>
		<tr>

			<td><%=slist2.get(0)%></td>
		</tr>
		<tr>

			<td><%=slist3.get(0)%></td>
		</tr>
		

	</table>

<br>

<button onclick="window.location.href='main.jsp';">main page</button>

	
</body>
</html>