<!DOCTYPE html>
<html lang="en">
<head>
    <title>Log-In</title>
    <style>
        body{
            margin: 0;
            padding: o;
            background-color: rgb(250, 239, 239);
        }

        .container{
            border: 5px solid blue;
            height: 300px;
            width: 40%;
            margin: 150px auto;
            border-radius: 20px;
            text-align: center;
        }
        h2{
            margin: 30px;
            font-size: 30px;
        }
        
        label{
            font-size: 18px;
        }
        input[type="text"]{
            margin: 5px;
            height: 20px;
            width: 40%;
            border-radius: 5px;
        }

        input[type="password"]{
            margin: 5px;
            height: 20px;
            width: 40%;
            border-radius: 5px;
        }

        input[type="submit"]{
            height: 30px;
            width: 15%;
            margin: 15px;
            background-color: blue;
            color: whitesmoke;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
        }

        .err-msg{
            color: red;
        }
    </style>
</head>
<body>

        <div class="container">
            <form action="adminlogin" method="post">
                <div><h2>Admin Login</h2></div>
                <div>
                    <label >Username</label><br>
                    <input type="text" name="username" required>
                </div>
                <div>
                    <label>Password</label><br>
                    <input type="password" name="password" required><br>
                    <label class="err-msg">${ msg }</label>
                </div>
                <div>
                    <input type="submit" value="Login">
                </div>
                
                    <a href="home.html">Home</a>
                
            </form>
        </div>
    
</body>
</html>