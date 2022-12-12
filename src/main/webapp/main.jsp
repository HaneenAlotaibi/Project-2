<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
 --%>
 <table style="width:100%">
 <tr bgcolor="#c2c9ff">
  <tr>
    <th>choose</th>
  
  </tr>
   <tr>       
 <td><a href="GetStudentsServlet" > view Student</a></td></th>
</tr>
<tr>
<td><a href="TeacherServlet" > view Teacher</a></td>
</tr>
<tr>
<td><a href="InsertStudent.jsp" > Insert Student</a></td>
</tr>
<tr>
<td><a href="InsertTeacher.jsp" > Insert Teacher</a></td>
</tr>
<tr>
<td><a href="Insertsubjects.jsp" > Insert subject</a></td>
</tr>
</tr>
</table>
</body>
</html>