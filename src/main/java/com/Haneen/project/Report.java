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

@WebServlet("/Report")
public class Report extends HttpServlet {
	public static final String DB_URLTOCONNECT = "jdbc:mysql://localhost:3306/backendadmin";
	public static final String DB_USERNAME = "root";
	public static final String DB_PASS = "";
	static private Connection dbCon;
	static private String qry;
	static private String qry1;
	static private String qry2;
	static private PreparedStatement preparedStatement;
	static private Statement theStatement;
	static private ResultSet resultset;
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String teacher = request.getParameter("teacher");
		String subject = request.getParameter("subject");
		String time = request.getParameter("time");

		;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
			System.out.println("connected successfully");
			qry = "INSERT INTO `class`(`id`, `teacher`, `subject`, `time`) VALUES  (?,?,?,?)";
//				theStatement = dbCon.createStatement();
//				resultset = theStatement.executeQuery(qry);
			preparedStatement = dbCon.prepareStatement(qry);
			preparedStatement.setNull(1, 0);

			preparedStatement.setString(2, teacher);
			preparedStatement.setString(3, subject);
			preparedStatement.setString(4, time);

			if (preparedStatement.executeUpdate() > 0)
				System.out.println("class inserted ");
//				 request.setAttribute("studentsList", students);
//				 RequestDispatcher dispatcher = request.getRequestDispatcher("/studentsList.jsp");
//					dispatcher.forward(request, response);

		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Students(request, response, out);
	}

	static void Students(HttpServletRequest request, HttpServletResponse response, PrintWriter out)
			throws ServletException, IOException {
		List<Student> students = new ArrayList();
//		response.getWriter().append("Served at: ").append(request.getContextPath());

		qry = "select * from students";
		try {
			theStatement = dbCon.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			resultset = theStatement.executeQuery(qry);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			while (resultset.next()) {
				Student student = new Student(resultset.getInt("id"), resultset.getString("fname"),
						resultset.getString("lname"), resultset.getInt("Age"));
				students.add(student);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("hi");
//			 for(Student student: students) {
//				 out.println(student.civilId);
//			 }

		List<Teacher> teachers = new ArrayList();
//				response.getWriter().append("Served at: ").append(request.getContextPath());

		qry1 = "select * from teachers";
		try {
			theStatement = dbCon.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			resultset = theStatement.executeQuery(qry1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			while (resultset.next()) {
				Teacher teacher = new Teacher(resultset.getInt("id"), resultset.getString("fname"),
						resultset.getString("lname"), resultset.getInt("Age"));
				teachers.add(teacher);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("hi");
//					 for(Student student: students) {
//						 out.println(student.civilId);
//					 }
		List<Subject> subjects = new ArrayList();
		qry2 = "select * from subjects";
		try {
			theStatement = dbCon.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			resultset = theStatement.executeQuery(qry2);
		} catch (SQLException e1) {
			
			e1.printStackTrace();
		}
		try {
			while (resultset.next()) {
				Subject subject = new Subject(resultset.getInt("id"), resultset.getString("name"));
				subjects.add(subject);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("hi");
//							 for(Student student: students) {
//								 out.println(student.civilId);
//							 }
		request.setAttribute("subjectsList", subjects);

		request.setAttribute("teachersList", teachers);
		request.setAttribute("studentsList", students);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Report.jsp");
		dispatcher.forward(request, response);

//			 request.setAttribute("studentsList", students);
//			 RequestDispatcher dispatcher = request.getRequestDispatcher("/Report.jsp");
//				dispatcher.forward(request, response);
//		

	}

}