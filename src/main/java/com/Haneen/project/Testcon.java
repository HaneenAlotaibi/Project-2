
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

@WebServlet("/Testcon")
public class Testcon extends HttpServlet {
	public static final String DB_URLTOCONNECT = "jdbc:mysql://localhost:3306/backendadmin";
	public static final String DB_USERNAME = "root";
	public static final String DB_PASS = "";
	static private Connection dbCon;
	static private String qry;
	static private String qry1;
	static private String qry2;
	static private String qry3;
	static private PreparedStatement preparedStatement;
	static private Statement theStatement;
	static private ResultSet resultset;
	static private ResultSet resultset1;
	static private ResultSet resultset2;
	static private ResultSet resultset3;
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
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("connected successfully");

		Students(request, response, out);
	}

	static void Students(HttpServletRequest request, HttpServletResponse response, PrintWriter out)
			throws ServletException, IOException {

		
		List<StudentClass> students = new ArrayList();
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
				StudentClass student = new StudentClass(resultset.getInt("id"), resultset.getString("fname"),
						resultset.getString("lname"), resultset.getInt("Age"),resultset.getInt("class"));
				students.add(student);
				
       
               
				System.out.println(resultset.getInt("id"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("hi");
			 for(StudentClass student: students) {
				 out.println(student);
			 }
		List<ClassData> ClassDatas = new ArrayList();
		qry3 = "select * from class";
		try {
			theStatement = dbCon.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			resultset3 = theStatement.executeQuery(qry3);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			while (resultset3.next()) {
				ClassData classdata = new ClassData(resultset3.getInt("id"), resultset3.getString("teacher"),
						resultset3.getString("subject"), resultset3.getString("time"));
				ClassDatas.add(classdata);
				//if()
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("hi");
		System.out.println(ClassDatas);
		request.setAttribute("ClassDatassList", ClassDatas);

		request.setAttribute("studentsList", students);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/testcon.jsp");
		dispatcher.forward(request, response);

//			 request.setAttribute("studentsList", students);
//			 RequestDispatcher dispatcher = request.getRequestDispatcher("/Report.jsp");
//				dispatcher.forward(request, response);
//		

	}

}