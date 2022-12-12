
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



@WebServlet("/SubjectServlet")
public class SubjectServlet extends HttpServlet {
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
	       out1.println("<!DOCTYPE html>");
	       out1.println("<html>");
	       out1.println("<head>");
	       out1.println("<title>Servlet StudentServlet</title>");
	       out1.println("<h1>ho</h1>");
	       out1.println("</head>");
	     
		 response.setContentType("text/html");
		 List <Subject> subjects= new ArrayList();
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
			System.out.println("connected successfully");
			qry = "select * from subjects";
			theStatement = dbCon.createStatement();
			resultset = theStatement.executeQuery(qry);
			 

			 while(resultset.next()) {
				 Subject subject = new Subject(resultset.getInt("id"),resultset.getString("name"));
				 subjects.add(subject);
			 }	
			 out.println("hi");
//			 for(Student student: students) {
//				 out.println(student.civilId);
//			 }
			 request.setAttribute("subjectList", subjects);
			 RequestDispatcher dispatcher = request.getRequestDispatcher("/Subject-list.jsp");
				dispatcher.forward(request, response);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}
	

}

