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




@WebServlet("/ClassServlet")
public class ClassServlet extends HttpServlet {
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
 response.setContentType("text/html");
		 ClassInf(request,response,out);

	}
	static void ClassInf(HttpServletRequest request, HttpServletResponse response, PrintWriter out) throws ServletException, IOException {
		List <ClassData> ClassDatas= new ArrayList();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
			System.out.println("connected successfully");
			qry = "select * from class";
			theStatement = dbCon.createStatement();
			resultset = theStatement.executeQuery(qry);
			 

			 while(resultset.next()) {
				 ClassData classdata = new ClassData(resultset.getInt("id"),resultset.getString("teacher"),
							resultset.getString("subject"),resultset.getString("time"));
				 ClassDatas.add(classdata);
			 }	
			 out.println("hi");
//			 for(Student student: students) {
//				 out.println(student.civilId);
//			 }
			 request.setAttribute("ClassDatassList", ClassDatas);
			 RequestDispatcher dispatcher = request.getRequestDispatcher("/ClassDatasList.jsp");
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
	


