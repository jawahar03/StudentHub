<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="container">
    <div class="title">Sign-up</div>
   	
   	<%String error = (String)request.getAttribute("error"); %> 
   	<%if(error!=null){ %>
   	<h1>Username "<%=error %>" is already exists.</h1>
   	<%} %>
   	
   	
      
    <div class="content">
      <form action="signup" method="post">
        <div class="user-details">
          
          <div class="input-box">
            <span class="details">Student Name</span>
            <input type="text" placeholder="Enter your name" name="name" required>
          </div>
          
          <div class="input-box">
            <span class="details">Department</span>
            <input type="text" placeholder="Enter your dept" name="dept" required>
          </div>
          
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" placeholder="Enter your number" name="contact" required>
          </div>
          
          <div class="input-box">
            <span class="details">City</span>
            <input type="text" placeholder="Enter your City" name="city" required>
          </div>
          
          <div class="input-box">
            <span class="details">RollNo</span>
            <input type="text" placeholder="Enter your City" name="rollno" required>
          </div>
          
          <div class="input-box">
            <span class="details">Gender</span>
            <input type="text" placeholder="Enter your Gender" name="gender" required>
          </div>
          
          <div class="input-box">
            <span class="details"> Password</span>
            <input type="password" placeholder="Enter your password" name="pass" required>
          </div>
        </div>

        <div class="button">
          <input type="submit" value="Sign-up">
        </div>
      </form>
    </div>
  </div>
</body>
</html>