package student.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import student.dto.Student;
public class StudentDetails {

	public Connection getConnection() throws SQLException, ClassNotFoundException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?user=root&password=root");
		return con;
	}
	
	public int addStudent(Student stu) throws SQLException, ClassNotFoundException {
		
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?user=root&password=root");
	PreparedStatement pst = con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?)");
		pst.setInt(1, stu.getId());
		pst.setString(2, stu.getName());
		pst.setString(3, stu.getDept());
		pst.setLong(4, stu.getContact());
		pst.setString(5, stu.getCity());
		pst.setInt(6, stu.getRollno());
		pst.setString(7, stu.getGender());
		pst.setString(8, stu.getPass());
		
		return pst.executeUpdate();
		
	}
	
	public Student findByRollno(int rollno) throws ClassNotFoundException, SQLException
	{
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("select * from student where rollno=?");
		pst.setInt(1, rollno);
		ResultSet rs = pst.executeQuery();
		Student stu = new Student();
		while(rs.next()) {
			stu.setId(rs.getInt(1));
			stu.setName(rs.getString(2));
			stu.setDept(rs.getString(3));
			stu.setContact(rs.getLong(4));
			stu.setCity(rs.getString(5));
			stu.setRollno(rs.getInt(6));
			stu.setGender(rs.getString(7));
			stu.setPass(rs.getString(8));
		}
		return stu;
		
	}
	
	public int updateStudent(Student stu) throws ClassNotFoundException, SQLException
	{
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("update student set name=?,dept=?,contact=?,city=?,gender=?,pass=? where rollno=?");
		
		pst.setString(1, stu.getName());
		pst.setString(2, stu.getDept());
		pst.setLong(3, stu.getContact());
		pst.setString(4, stu.getCity());
		pst.setString(5, stu.getGender());
		pst.setString(6, stu.getPass());
		pst.setInt(7, stu.getRollno());
		return pst.executeUpdate();
	}
	
	public int deleteStudent(int rollno) throws ClassNotFoundException, SQLException
	{
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("delete from student where rollno=?");
		pst.setInt(1, rollno);
		return pst.executeUpdate();
		
	}
	
	public List<Student> getAllStudent() throws ClassNotFoundException, SQLException{
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("select * from student");
		ResultSet rs = pst.executeQuery();
		
		List<Student> stu= new ArrayList<Student>();
		while(rs.next())
		{
			Student s = new Student();
			s.setId(rs.getInt(1));
			s.setName(rs.getString(2));
			s.setDept(rs.getString(3));
			s.setContact(rs.getLong(4));
			s.setCity(rs.getString(5));
			s.setRollno(rs.getInt(6));
			s.setGender(rs.getString(7));
			s.setPass(rs.getString(8));
			stu.add(s);
		}
		return stu;
	}
	public Student findByName(String name) throws ClassNotFoundException, SQLException
	{
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("select * from student where name = ?");
		pst.setString(1, name);
		ResultSet rs = pst.executeQuery();
		Student s = new Student();
		while(rs.next())
		{
			s.setId(rs.getInt(1));
			s.setName(rs.getString(2));
			s.setDept(rs.getString(3));
			s.setContact(rs.getLong(4));
			s.setCity(rs.getString(5));
			s.setRollno(rs.getInt(6));
			s.setGender(rs.getString(7));
			s.setPass(rs.getString(8));
		}
		return s;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Student st= new Student();
		StudentDetails s = new StudentDetails();
		st.setId(101);
		st.setName("name");
		st.setDept("bcs");
		st.setContact(8312751);
		st.setCity("chennai");
		st.setPass("dfd8fy873");
		s.addStudent(st);
	}

}
