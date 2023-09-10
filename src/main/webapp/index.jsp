<html>
<head>
<meta name="viewport" content="width-=device-width, initial-scale=1.0">
	<title>StudentHub</title>
	<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }

        #container {
            width: 700px;
            height: 50vh;
            background-color: #fff;
            padding: 75px 37px;
            text-align: center;
            border-radius: 5px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
        }

        h1 {
            font-size: 45px;
            font-weight: 500;
            position: relative;
        }

        h5{
            /* border: 1px solid black;*/
            width: 250px;
            height: 30px;
            margin-left: 190px;
            border-radius: 5px;
            font-size: 18px;
            font-weight: 500;
            letter-spacing: 1px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        .a{
            text-decoration: none;
            color: white;
        }
        a{
        	text-decoration: none;
        	color: #9b59b6;
        }
                @media screen and (max-width:600px) {
            #container{
                width: 100%;
                height: 400px;
                margin-bottom: 170px;
                margin-left: -1px;
            }
            h1{
                font-size: 20px;
                text-align: center;
                margin-right: 10px;
                font-weight: 500;
            /* position: relative; */
            }
            h3{
                font-size: 15px;
                margin-right: 10px;
                margin-top: 10px;
            }
            h5{
            width: 150px;
            height: 30px;
            margin-left: 80px;
            border-radius: 5px;
            font-size: 18px;
            font-weight: 500;
            letter-spacing: 1px;
            margin-top: 8px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            }
            h4{
                margin-right: 10px;
            }
        }
        
        
    </style>
</head>
<body>
<div id="container">
        <h1>Welcome To studentHub.</h1>
        <h3>Let's Start</h3>

        <h5><a class="a" href="login.jsp">Login</a></h5> <br> 
        <h4>Dont have a account?</h4>
        <h5><a class="a" href="signup.jsp">Sign-up</a></h5>
        <br><br>
        <h4><a href="adminlogin.jsp" >Click here to login as a admin.</a></h4>
    </div>
</body>
</html>
