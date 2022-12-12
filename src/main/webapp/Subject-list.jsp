<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Haneen.project.Subject"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subject List</title>
</head>
<body>
 <%-- <jsp:forward  page="GetStudentsServlet.java"></jsp:forward > --%> 
 

<table border ="1" width="500" align="center">
         <tr bgcolor="FFEE88">
          <th><b>id</b></th>
          <th><b>Name</b></th>
          
         </tr>
        <%-- Fetching the attributes of the request object
             which was previously set by the servlet 
              "StudentServlet.java"
        --%> 
        <%ArrayList<Subject> subjectslist = 
            (ArrayList<Subject>)request.getAttribute("subjectList");
        for(Subject s:subjectslist){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><%=s.id%></td>
                <td><%=s.name%></td>
            
            </tr>
            <%}%>
        </table> 


</body>
</html>