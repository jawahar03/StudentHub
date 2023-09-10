package student.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import student.dao.*;
import student.dto.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String pass = req.getParameter("pass");
		
		String adminName = "admin";
		String adminPass = "root";
		
		StudentDetails std = new StudentDetails();
		try {
			List<Student> students = std.getAllStudent();
			
			
			if(name.equals(adminName) && pass.equals(adminPass))
			{	req.setAttribute("students", students);
				RequestDispatcher dispatcher = req.getRequestDispatcher("adminhome.jsp");
				dispatcher.include(req, resp);
			}
			else {
				req.setAttribute("err2", "Invalid username or password...");
				RequestDispatcher dispatcher= req.getRequestDispatcher("adminlogin.jsp");
				dispatcher.include(req, resp);
			}
		}
			
		 catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}