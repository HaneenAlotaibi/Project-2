<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Haneen.project.Student"%>
<%@page import="com.Haneen.project.GetStudentsServlet"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  border-collapse: collapse;
  width: 100%;
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
 

<table border ="1" align="center">
         <tr >
          <th><b>id</b></th>
          <th><b>first name</b></th>
          <th><b>last name</b></th>
          <th><b>age</b></th>
         </tr>
        <%-- Fetching the attributes of the request object
             which was previously set by the servlet 
              "StudentServlet.java"
        --%> 
        <%ArrayList<Student> studentslist = 
            (ArrayList<Student>)request.getAttribute("studentsList");
        for(Student s:studentslist){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><%=s.id%></td>
                <td><%=s.fname%></td>
                <td><%=s.lname%></td>
                <td><%=s.age%></td>
            </tr>
            <%}%>
        </table> 
<br>
<button onclick="window.location.href='main.jsp';">
     main page
    </button></td>
</body>
</html>