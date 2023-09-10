package student.servlet;
import student.dto.*;
import student.dao.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/signup")
public class SignUp extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		int id =Integer.parseInt(req.getParameter("id") ) ;
		String name = req.getParameter("name");
		String dept = req.getParameter("dept");
		long contact =Long.parseLong(req.getParameter("contact")) ;
		String city = req.getParameter("city");
		int rollno = Integer.parseInt(req.getParameter("rollno"));
		String gender = req.getParameter("gender");
		String pass = req.getParameter("pass");
		
		StudentDetails st = new StudentDetails();
		try {
			List<Student> student = st.getAllStudent();
			
			for (Student student2 : student) {
				if(student2.getName().equals(name)) {
					req.setAttribute("error", name);
					RequestDispatcher dispatcher = req.getRequestDispatcher("signup.jsp");
					dispatcher.forward(req, resp);
				}
			
				
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
			Student stu = new Student();
			int min = 100000;
		    int max = 200000;
		    Random random = new Random();
		    int randomNumber = random.nextInt(max - min + 1) + min;
		    
			stu.setId(randomNumber);
			stu.setName(name);
			stu.setDept(dept);
			stu.setContact(contact);
			stu.setCity(city);
			stu.setRollno(rollno);
			stu.setGender(gender);
			stu.setPass(pass);
				
			StudentDetails s =  new StudentDetails();
			try {
				int res = s.addStudent(stu);
				if(res==1) {
					req.setAttribute("name", name);
					RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
					dispatcher.include(req, resp);
				}
				else {
					RequestDispatcher dispatcher = req.getRequestDispatcher("signup.jsp");
					dispatcher.include(req, resp);
				}
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} 
		
		
	}
