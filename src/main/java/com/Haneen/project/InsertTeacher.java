package com.Haneen.project;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertTeacher")
public class InsertTeacher extends HttpServlet {
	public static final String DB_URLTOCONNECT ="jdbc:mysql://localhost:3306/backendadmin";
	public static final String DB_USERNAME ="root";
	public static final String DB_PASS="";
	static private Connection dbCon;
	static private String qry;
	static private PreparedStatement preparedStatement;
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String ages = request.getParameter("age");
		
		int age=Integer.parseInt(ages); 
		
	;  
		
		 
		 try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
				System.out.println("connected successfully");
				qry = "insert into teachers (`id`, `fname`, `lname`, `age`) VALUES (?,?,?,?)";
//				theStatement = dbCon.createStatement();
//				resultset = theStatement.executeQuery(qry);
				preparedStatement = dbCon.prepareStatement(qry);
				preparedStatement.setNull(1,0);

				preparedStatement.setString(2, fname);

				preparedStatement.setString(3, lname);
				
				preparedStatement.setInt(4, age);
				
				
	
				
				if(preparedStatement.executeUpdate() > 0)
					System.out.println("teacher inserted ");
//				 request.setAttribute("studentsList", students);
//				 RequestDispatcher dispatcher = request.getRequestDispatcher("/studentsList.jsp");
//					dispatcher.forward(request, response);
				
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}

}