package student.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student.dao.StudentDetails;
import student.dto.Student;
@WebServlet("/stuedit")
public class StuEdit extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int rollno =Integer.parseInt(req.getParameter("rollno")) ;
		StudentDetails s = new StudentDetails();
		
		try {
			Student stu =s.findByRollno(rollno);
			s.findByRollno(rollno);
			req.setAttribute("students", stu);
			RequestDispatcher dispatcher = req.getRequestDispatcher("stuedit.jsp");
			dispatcher.include(req, resp);
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
