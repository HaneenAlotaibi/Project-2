<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Haneen.project.Student"%>
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
  <div style="display:block; width:100%;">  
  <div style="width:50%; float: left; display: inline-table;">     
       <table border ="1">
        <tr >
          <th><b>id</b></th>
      </tr>
        <%ArrayList<Teacher> teacherslist = 
            (ArrayList<Teacher>)request.getAttribute("teachersList");
        for(Teacher t:teacherslist){%>
        <tr>
               
                <td><%=t.fname%></td>
                
            </tr>
      
           
            
            <%}%>
               </table>
               
               <table border ="1" >
               </div>
        <div style="width:50%; float: left; display: inline-table;">       
        <tr >
          <th><b>id</b></th>
      </tr> 
       <%ArrayList<Student> studentslist = 
            (ArrayList<Student>)request.getAttribute("studentsList");
        for(Student s:studentslist){%>
        <%-- Arranging data in tabular form
        --%>
         </tr>
      <tr>
               
                <td><%=s.fname%></td>
                
            </tr>
       
           
            
            <%}%>
     
     </tr>
       
         </table> 
         </div>  

</div>
<br>
<button onclick="window.location.href='main.jsp';">
     main page
    </button></td>
</body>
</html>