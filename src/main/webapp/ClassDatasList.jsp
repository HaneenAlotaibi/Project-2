<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Haneen.project.ClassData"%>
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
          <th><b>ID</b></th>
          <th><b>Teacher</b></th>
          <th><b>Subject</b></th>
          <th><b>Time</b></th>
         </tr>
        <%-- Fetching the attributes of the request object
             which was previously set by the servlet 
              "StudentServlet.java"
        --%> 
        <%ArrayList<ClassData> ClassDataslist = 
            (ArrayList<ClassData>)request.getAttribute("ClassDatassList");
        for(ClassData c:ClassDataslist){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><%=c.id%></td>
                <td><%=c.teacher%></td>
                <td><%=c.subject%></td>
                <td><%=c.time%></td>
            </tr>
            <%}%>
        </table> 
<br>
<button onclick="window.location.href='main.jsp';">
     main page
    </button></td>
</body>
</html>