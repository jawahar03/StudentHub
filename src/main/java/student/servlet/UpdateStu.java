package student.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student.dao.StudentDetails;
import student.dto.Student;
@WebServlet("/update2")
public class UpdateStu extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String dept = req.getParameter("dept");
		long contact =Long.parseLong(req.getParameter("contact")) ;
		String city = req.getParameter("city");
		int rollno = Integer.parseInt(req.getParameter("rollno"));
		String gender = req.getParameter("gender");
		String pass = req.getParameter("pass");
		
		Student stu = new Student();

		stu.setName(name);
		stu.setDept(dept);
		stu.setContact(contact);
		stu.setCity(city);
		stu.setRollno(rollno);
		stu.setGender(gender);
		stu.setPass(pass);
		
		StudentDetails s= new StudentDetails();
		try {
			s.updateStudent(stu);
			List<Student> students = s.getAllStudent();
			req.setAttribute("students", students);
			RequestDispatcher dispatcher = req.getRequestDispatcher("adminhome.jsp");
			dispatcher.include(req, resp);
			
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
