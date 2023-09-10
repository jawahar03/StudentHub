<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin</title>
        <style>
            *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    body{
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 10px;
    background: linear-gradient(135deg, #71b7e6, #9b59b6);
    }
    .container{
    max-width: 700px;
    width: 100%;
    background-color: #fff;
    padding: 25px 30px;
    border-radius: 5px;
    box-shadow: 0 5px 10px rgba(0,0,0,0.15);
    }
    .container .title{
    font-size: 25px;
    font-weight: 500;
    position: relative;
    }
    .container .title::before{
    content: "";
    position: absolute;
    left: 0;
    bottom: 0;
    height: 3px;
    width: 30px;
    border-radius: 5px;
    background: linear-gradient(135deg, #71b7e6, #9b59b6);
    }
    .content form .user-details{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin: 20px 0 12px 0;
    }
    form .user-details .input-box{
    margin-bottom: 15px;
    width: calc(100% / 2 - 20px);
    }
    form .input-box span.details{
    display: block;
    font-weight: 500;
    margin-bottom: 5px;
    }
    .user-details .input-box input{
    height: 45px;
    width: 100%;
    outline: none;
    font-size: 16px;
    border-radius: 5px;
    padding-left: 15px;
    border: 1px solid #ccc;
    border-bottom-width: 2px;
    transition: all 0.3s ease;
    }
    form .button{
    height: 45px;
    margin: 35px 0
    }
    form .button input{
    height: 100%;
    width: 100%;
    border-radius: 5px;
    border: none;
    color: #fff;
    font-size: 18px;
    font-weight: 500;
    letter-spacing: 1px;
    cursor: pointer;
    transition: all 0.3s ease;
    background: linear-gradient(135deg, #71b7e6, #9b59b6);
    }
    form .button input:hover{
    /* transform: scale(0.99); */
    background: linear-gradient(-135deg, #71b7e6, #9b59b6);
    }

    form .user-details .input-box{
        margin-bottom: 15px;
        width: 100%;
    }
    form .category{
        width: 100%;
    }
    .content form .user-details{
        max-height: 300px;
        overflow-y: scroll;
    }
    .user-details::-webkit-scrollbar{
        width: 5px;
    }
    .user-details{
        margin-top: 10px;
    }
    
        </style>
    </head>
    <body>
        <div class="container">
            <div class="title"> Admin Login</div>
            
             <% String err2 = (String)request.getAttribute("err2"); %>
        <% if(err2!=null){ %>
            <h1> <%= err2 %> </h1>
        <% } %> 
            
    
            <form action="adminlogin" method="post">
                <div class="user-details">
                <div class="input-box">
                    <span class="details">Name</span>
                    <input type="text" placeholder="Enter admin name" name="name" required>
                </div>
                <div class="input-box">
                    <span class="details">Password</span>
                    <input type="password" placeholder="Enter admin password" name="pass" required>
                </div>
                </div>
                <div class="button">
                    <input type="submit" value="Login">
                </div>
            </form>
        </div>
    </body>
    </html>