<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send Enquiry</title>
<style>
body{
background: url(elder.jpg);
background-size: cover;
background-position: -400px 0px;
}
h1{
text-align: center;
color: red;
font-size: 4em;
}
h3{
color: white;
}
div.main{
width: 400px;
margin: 100px auto 0px auto;
}
h2{
text-align: center;
padding: 20px;
font-family: sans-serif;
}
div.register{
background-color: rgba(0,0,0,0.5);
width: 100%;
font-size: 18px;
border-radius: 10px;
border: 1px solid rgba(255,255,255,0.3);
box-shadow: 2px 2px 15px rgba(0,0,0,0.3);
color: #fff;
}
form#register{
margin: 40px;
}
label{
font-family: sans-serif;
font-size: 18px;
font-style: italic;
}
select, input#name{
width: 300px;
border: 1px solid #ddd;
border-radius: 3px;
outline: 0;
padding: 7px;
background-color: #fff;
box-shadow: inset 1px 1px 5px rgba(0,0,0,0.3);
}
input#submit{
width: 200px;
padding: 7px;
font-size: 16px;
font-family: sans-serif;
font-weight: 600;
boder-radius: 3px;
background-color: rgba(250,100,0,0.8);
color: #fff;
cursor: pointer;
border: 1px solid rgba(255,255,255,0.3);
box-shadow: 1px 1px 5px rgba(0,0,0,0.3);
margin-bottom: 20px;
}
label,span,h2{
text-shadow: 1px 1px 5px rgba(0,0,0,0.3);
}

</style>
</head>
<body>
<h1><u>Old-age Home</u></h1>
<div class='main'>
  <div class='register'>
  <h3>${ msg }</h3>
  <h2><u>Register Here</u></h2>
  
  <form id="register" action="register">
  <label>Full Name:</label>
  <br>
  <input type="text" name="name" id="name" placeholder="Enter your full name" required>
  <br><br>
  
  <label>Your Age:</label>
  <br>
  <input type="number" name="age" id="name" placeholder="How old are you?" required>
  <br><br>
  <label>Gender:</label>
  <br>
  &nbsp;&nbsp;&nbsp;
  <input type="radio" name="gender" id="male" value="male" required>
  &nbsp;
  <span id="male">Male</span>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="gender" id="female" value="female">
  &nbsp;
  <span id="female">Female</span>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="gender" id="other" value="other">
  &nbsp;
  <span id="other">Other</span>
  <br><br>
  <label>Date of Birth:</label>
  <br>
  <input type="date" name="birthDate" id="name" placeholder="Enter your date of birth" required>
  <br><br>
  <label>Email:</label>
  <br>
  <input type="email" name="email" id="name" placeholder="Enter your valid Email" required>
  <br><br>
  <label>Address:</label>
  <br>
  <input type="text" name="address" id="name" placeholder="Enter your address" required>
  <br><br>
  <label>Mobile Number:</label>
  <br>
  <input type="number" name="mobno" id="name" placeholder="Enter your mobile number" required>
  <br><br>
  <label>Select Room Type:</label>
  <br>
 <select name="roomtype" required>
 <option>Single Occupany (with AC)</option>
 <option>Single Occupany (without AC)</option>
 <option>Double Occupany (with AC)</option>
 <option>Double Occupany (without AC)</option>
 </select>
 <br><br>
 <input type="submit" value="submit" name="submit" id="submit">
  <a href="home.html">home</a>
</body>
</html>