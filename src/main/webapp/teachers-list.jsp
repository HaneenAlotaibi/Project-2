<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Haneen.project.Teacher"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher List</title>
</head>
<body>
 <%-- <jsp:forward  page="GetStudentsServlet.java"></jsp:forward > --%> 
 

<table border ="1" width="500" align="center">
         <tr bgcolor="FFEE88">
          <th><b>id</b></th>
          <th><b>fName</b></th>
          <th><b>lname</b></th>
          <th><b>age</b></th>
         </tr>
        <%-- Fetching the attributes of the request object
             which was previously set by the servlet 
              "StudentServlet.java"
        --%> 
        <%ArrayList<Teacher> teacherslist = 
            (ArrayList<Teacher>)request.getAttribute("teachersList");
        for(Teacher t:teacherslist){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><%=t.id%></td>
                <td><%=t.fname%></td>
                <td><%=t.lname%></td>
                <td><%=t.age%></td>
            </tr>
            <%}%>
        </table> 


</body>
</html>