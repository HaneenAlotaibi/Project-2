<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.ArrayList"%>
<%@page import="com.Haneen.project.Teacher"%>
<%@page import="com.Haneen.project.Student"%>
  <%@page import="com.Haneen.project.Subject"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert class</title>
</head>
<body>
 <h1>Insert new class</h1>

<form action="test">
teacher: <input type="text"  name="teacher" list="teachername">
 <datalist id="teachername">
      <select id="Teacher">
        <%ArrayList<Teacher> teacherslist = 
            (ArrayList<Teacher>)request.getAttribute("teachersList");
        for(Teacher t:teacherslist){%>
        
        <option><%=t.fname%></option>
           
            
            <%}%>
      
       </select>
    </datalist>
<br>
<br>
subject: <input type="text" " name="subject" list="subjectname">
<datalist id="subjectname">
      <select id="Subject">
        <%ArrayList<Subject> subjectslist = 
            (ArrayList<Subject>)request.getAttribute("subjectsList");
        for(Subject s:subjectslist){%>
        <%-- Arranging data in tabular form
        --%>
          
                <option><%=s.name%></option>
               
            
            <%}%>
      
       </select>
    </datalist>
<br>
<br>
   Time:    <input type="text" placeholder="Time" name="time">
<br>
<br>
<input type="submit" value="submit">
</form>


<br>
<button onclick="window.location.href='main.jsp';">
     main page
    </button></td>
</body>
</html>