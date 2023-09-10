<%@page import="student.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Details</title>
<link rel="stylesheet" href="style.css">

</head>
<body>
		<% Student s = (Student)request.getAttribute("students"); %>
	
	<div class="container">
    <div class="title">Edit Details</div>
      
    <div class="content">
      <form action="stuupdate" method="post">
        <div class="user-details">
          
          <div class="input-box">
            <span class="details">Student Name</span>
            <input type="text" placeholder="Enter your name" value=<%=s.getName() %> name="name" required>
          </div>
          
          <div class="input-box">
            <span class="details">Department</span>
            <input type="text" placeholder="Enter your dept" value=<%=s.getDept() %> name="dept" required>
          </div>
          
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" placeholder="Enter your number" value=<%=s.getContact() %> name="contact" required>
          </div>
          
          <div class="input-box">
            <span class="details">City</span>
            <input type="text" placeholder="Enter your City" value=<%=s.getCity() %> name="city" required>
          </div>
          
          <div class="input-box">
            <span class="details">RollNo</span>
            <input type="text" placeholder="Enter your City"value=<%=s.getRollno() %> readonly="readonly"  name="rollno" required>
          </div>
          
          <div class="input-box">
            <span class="details">Gender</span>
            <input type="text" placeholder="Enter your Gender" value=<%=s.getGender() %> name="gender" required>
          </div>
          
          <div class="input-box">
            <span class="details"> Password</span>
            <input type="password" placeholder="Enter your password" value=<%=s.getPass() %> name="pass" required>
          </div>
        </div>

        <div class="button">
          <input type="submit" value="Apply Changes">
        </div>
      </form>
    </div>
  </div>
</body>
</html>