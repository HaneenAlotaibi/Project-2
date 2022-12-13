<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main</title>



<style>
.list-type1{
width:400px;
margin:0 auto;
}

.list-type1 ol{
counter-reset: li;
list-style: none;
*list-style: decimal;
font-size: 15px;
font-family: 'Raleway', sans-serif;
padding: 0;
margin-bottom: 4em;
}
.list-type1 ol ol{
margin: 0 0 0 2em;
}
h1,button{
position: relative;
display: block;
padding: .4em .4em .4em 2em;
*padding: .4em;
margin: .5em 0;
background: #93C775;
color: #000;
text-decoration: none;
-moz-border-radius: .3em;
-webkit-border-radius: .3em;
border-radius: 10em;
transition: all .2s ease-in-out;
}

.list-type1 a{
position: relative;
display: block;
padding: .4em .4em .4em 2em;
*padding: .4em;
margin: .5em 0;
background: #93C775;
color: #000;
text-decoration: none;
-moz-border-radius: .3em;
-webkit-border-radius: .3em;
border-radius: 10em;
transition: all .2s ease-in-out;
}

.list-type1 a:hover{
background: #d6d4d4;
text-decoration:none;
transform: scale(1.1);
}

.list-type1 a:before{
content: counter(li);
counter-increment: li;
position: absolute;
left: -1.3em;
top: 50%;
margin-top: -1.3em;
background:#93C775;
height: 2em;
width: 2em;
line-height: 2em;
border: .3em solid #fff;
text-align: center;
font-weight: bold;
-moz-border-radius: 2em;
-webkit-border-radius: 2em;
border-radius: 2em;
color:#FFF;
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
 --%>
 <table style="width:100%">
 <tr bgcolor="#c2c9ff">
  <tr>
    <th><b>Available choices<b></th>
  
  </tr>
   <tr>       
 <td><a href="GetStudentsServlet" > view Student</a></td></th>
</tr>
<tr>
<td><a href="TeacherServlet" > view Teacher</a></td>
</tr>
<tr>
<td><a href="SubjectServlet" > view subject</a></td>
</tr>
<tr>
<td><a href="ClassServlet" > view class</a></td>
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
<tr>
<td><a href="test" > Insert class</a></td>
</tr>
<tr>
<td><a href="Testcon" > view report</a></td>
</tr>
<tr>
 <td><br></td>
</tr>
<tr>
 <td><button onclick="window.location.href='index1.jsp';">
     logout
    </button></td>
</tr>
</tr>
</table>


<div class="list-type1">
<h1>Available choices</h1>
<ol>
<li><a href="GetStudentsServlet" > view Student</a></li>
<li><a href="TeacherServlet" > view Teacher</a></li>
<li><a href="SubjectServlet" > view subject</a></li>
<li><a href="ClassServlet" > view class</a></li>
<li><a href="InsertStudent.jsp" > Insert Student</a></li>
<li><a href="InsertTeacher.jsp" > Insert Teacher</a></li>
<li><a href="Insertsubjects.jsp" > Insert subject</a></li>
<li><a href="test" > Insert class</a></li>
<li><button onclick="window.location.href='index1.jsp';">
     logout
    </button></li>
</ol>
</div>

</body>
</html>