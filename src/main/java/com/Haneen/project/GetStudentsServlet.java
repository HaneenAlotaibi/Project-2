package com.Haneen.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/GetStudentsServlet")
public class GetStudentsServlet extends HttpServlet {
	public static final String DB_URLTOCONNECT ="jdbc:mysql://localhost:3306/backendadmin";
	public static final String DB_USERNAME ="root";
	public static final String DB_PASS="";
	static private Connection dbCon;
	static private String qry;
	static private PreparedStatement preparedStatement;
	static private Statement theStatement;
	static private ResultSet resultset;
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		 response.setContentType("text/html;charset=UTF-8");
	   PrintWriter out1 = response.getWriter();
//	       out.println("<!DOCTYPE html>");
//	       out.println("<html>");
//	       out1.println("<head>");
//	       out1.println("<title>Servlet StudentServlet</title>");
//	       out1.println("<h1>ho</h1>");
//	       out1.println("</head>");
	      //out.println("<a href='https://www.freecodecamp.org/'>"+" <button>freeCodeCamp</button>" +"</a>  ");
		 response.setContentType("text/html");
		 Students(request,response,out);
		 //Teacher(request,response,out);
	    //  out.println(" <button>freeCodeCamp</button>" );

//		 List <Student> students= new ArrayList();
////		response.getWriter().append("Served at: ").append(request.getContextPath());
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
//			System.out.println("connected successfully");
//			qry = "select * from students";
//			theStatement = dbCon.createStatement();
//			resultset = theStatement.executeQuery(qry);
//			 
//
//			 while(resultset.next()) {
//				 Student student = new Student(resultset.getInt("id"),resultset.getString("fname"),
//							resultset.getString("lname"),resultset.getInt("Age"));
//				 students.add(student);
//			 }	
//			 out.println("hi");
////			 for(Student student: students) {
////				 out.println(student.civilId);
////			 }
//			 request.setAttribute("studentsList", students);
//			 RequestDispatcher dispatcher = request.getRequestDispatcher("/studentsList.jsp");
//				dispatcher.forward(request, response);
//		} catch (ClassNotFoundException e) {
//			
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}

//		SubjectServlet s=new SubjectServlet();
//		s.doGet(request, response);
//		RequestDispatcher dispatcher =
//			       getServletContext().getRequestDispatcher("/SubjectServlet");
//			    dispatcher.forward(request, response);
	}
	static void Students(HttpServletRequest request, HttpServletResponse response, PrintWriter out) throws ServletException, IOException {
		List <Student> students= new ArrayList();
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
			System.out.println("connected successfully");
			qry = "select * from students";
			theStatement = dbCon.createStatement();
			resultset = theStatement.executeQuery(qry);
			 

			 while(resultset.next()) {
				 Student student = new Student(resultset.getInt("id"),resultset.getString("fname"),
							resultset.getString("lname"),resultset.getInt("Age"));
				 students.add(student);
			 }	
			 out.println("hi");
//			 for(Student student: students) {
//				 out.println(student.civilId);
//			 }
			 request.setAttribute("studentsList", students);
			 RequestDispatcher dispatcher = request.getRequestDispatcher("/studentsList.jsp");
				dispatcher.forward(request, response);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
//	static void  Teacher(HttpServletRequest request, HttpServletResponse response, PrintWriter out) throws ServletException, IOException {
//		List <Teacher> teachers= new ArrayList();
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
//			System.out.println("connected successfully");
//			qry = "select * from teachers";
//			theStatement = dbCon.createStatement();
//			resultset = theStatement.executeQuery(qry);
//			 
//
//			 while(resultset.next()) {
//				 Teacher teacher = new Teacher(resultset.getInt("id"),resultset.getString("fname"),
//							resultset.getString("lname"),resultset.getInt("Age"));
//				 teachers.add(teacher);
//			 }	
//			 out.println("hi");
////			 for(Student student: students) {
////				 out.println(student.civilId);
////			 }
//			 request.setAttribute("teachersList", teachers);
//			 RequestDispatcher dispatcher = request.getRequestDispatcher("/teachers-list.jsp");
//				dispatcher.forward(request, response);
//		} catch (ClassNotFoundException e) {
//			
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//		
//	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doGet(req, resp);
	}	
	}
	


