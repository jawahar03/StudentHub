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

@WebServlet("/delete")
public class DeleteStu extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int rollno = Integer.parseInt(req.getParameter("rollno"));
		
		StudentDetails details = new StudentDetails();
		try {
			details.deleteStudent(rollno);
			req.setAttribute("students", details.getAllStudent());
			RequestDispatcher dispatcher = req.getRequestDispatcher("adminhome.jsp");
			dispatcher.include(req, resp);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
