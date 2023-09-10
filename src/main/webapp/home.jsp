<%@page import="javax.swing.text.StyledEditorKit.ForegroundAction"%>
<%@page import="student.dto.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width-=device-width, initial-scale=1.0">

<title>Home</title>
<link rel="stylesheet" href="adminhome.css">
<style type="text/css">
	@media screen and (max-width:600px) {
	#parent{
    display: grid;
    width: 200%;
    height: 70vh;
    grid-template-columns: 450px 650px;
    justify-content: center;
    gap: 5px;
    text-align: center;
    background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
#box2{
	width:450px;
	margin-left: 30px;
}
#box1{
	margin-left: 160px;
}
#box3{
	width:770px;
	margin-left:160px;
}
table,td,th{
    border: .5px solid #333333;
    border-collapse: collapse;
    margin-bottom: 10px;
    font-family: 'Mandali', sans-serif;
}
.col1{
    text-align: left;
    width: 100px;
}
.col2{
    width: 10px;
}
table{
    width:400px;
    margin-left: 25px;
}
#buttons{
    display: flex;
    margin-top: 10px;
    margin-left: 440px;
    gap: 50px;
}
}
</style>
</head>
<body>
	<%List<Student> stu = (List)request.getAttribute("students"); %>
	<%for(Student s : stu) {%> 
    <div id="parent">
        <div id="box1">
            <h1 id="name"><img id="cap" src="graduation.png" alt=""><%= s.getName()%> </h1>
            <hr>
            <img id="stu" src="graduated.png" alt="">
            <h3>Student Id : <%= s.getId()%> </h3>
            <h3>Department : <%= s.getDept()%> </h3>
        </div>
        <div id="box2">
            <h2>General Information</h2>
            <table>
                <tr>
                    <td class="col1">RollNo</td>
                    <td class="col2">:</td>
                    <td><%=s.getRollno() %></td>
                </tr>
                <tr>
                    <td class="col1">Contact</td>
                    <td class="col2">:</td>
                    <td><%= s.getContact()%> </td>
                </tr>
                <tr>
                    <td class="col1">Gender</td>
                    <td class="col2">:</td>
                    <td> <%= s.getGender()%> </td>
                </tr>
                <tr>
                    <td class="col1">City</td>
                    <td class="col2">:</td>
                    <td> <%= s.getCity()%></td>
                </tr>
                 <% int rollno = (int) request.getAttribute("rollno"); %>
                 <%if(rollno==s.getRollno()) {%>
                <tr>
                    <td class="col1">Password</td>
                    <td class="col2">:</td>
                    <td><%= s.getPass()%> </td>
                </tr>
                <%} %>
            </table>
        </div>
        
        
        <div>
        
       <%if(rollno==s.getRollno()) {%>
        <div id="buttons">
             
            <a title="Edit" class="btn" href="stuedit?rollno=<%=s.getRollno() %>"><img class="icons" src="edit.png" alt=""> </a> 
            <a title="To delete request your admin" class="btn" href="#"><img class="icons" src="delete.png" alt=""> </a>
        </div>
        <%}%>
    </div>
    </div>
     <%} %>
</body>
</html>