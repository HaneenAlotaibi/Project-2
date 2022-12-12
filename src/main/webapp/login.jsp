<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="com.Haneen.project.GetStudentsServlet" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String user = request.getParameter("username");
	String pwd = request.getParameter("password");
	
	//if(user !="Admin"  ||"".equals(user) || pwd !="Admin"||"".equals(pwd)){
if(!user.equals("Admin") && !pwd.equals("Admin")){
		%>
       
       <jsp:forward  page="error.jsp"></jsp:forward >
        <%
            }
        %>
<%
if(user.equals("Admin") && pwd.equals("Admin")) {
		%>
       
<jsp:forward  page="main.jsp"></jsp:forward >
        <%
            }
        %>

<%-- do some DB processing, not doing anything for simplicity --%>

</body>
</html>