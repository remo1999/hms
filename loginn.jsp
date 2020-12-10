<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String userid=request.getParameter("userid");
session.setAttribute("userid", userid);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/s41","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from userss where userid='"+userid+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("userid").equals(userid))
{
	
		
out.println("Welcome " +userid);
response.sendRedirect("home.jsp");
}
else{
out.println("user not found");
response.sendRedirect("loginn.jsp");

}
}
catch (Exception e) {
e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<style>
body

{
margin=0;
padding=0;
font-Family: "Times New Roman", Times, serif;
 background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.image {
  height: 500px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.cust
{
position:absolute;
margin-right:18px;
width:10px;
height:8px;
padding-top: 4px;

}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  border: 1px solid #e7e7e7;
  background-color: #f3f3f3;

}

li {
  float: left;
}

li a {
  display: block;
  color: #666;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
</style>
<link rel="stylesheet" href="style.css">
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body background="C:\Users\User\Desktop\notepad\imgLogin.jpg">

<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="#home" class="w3-bar-item w3-button"><img src="C:\Users\User\Desktop
    \notepad\images\hotllogo.jpg" alt="spa" width=100 height=50 ></a>
    <!-- Float links to the right. Hide them on small screens -->
    
    <div class="w3-right w3-hide-small">
      <a href="homepage2.jsp" class="w3-bar-item w3-button">Home</a>
      <a href="register.html" class="w3-bar-item w3-button">Register</a>
      <a href="loginn.jsp" class="w3-bar-item w3-button">Login</a>
    </div>
  </div>
</div>

<div class="login-page">
<div class="form">
<form action="loginn.jsp" method=post >
<h1> <center> <u> LOGIN </center> </u> </h1>
<label for="username"><b>USERNAME</b></label> <br>
<input type="text"  name="userid" placeholder="&nbsp&nbsp&nbsp&nbsp Enter Username" required/><br>
<label for="password" ><b>PASSWORD</b></label> <br>
<input type="password" name="password"  placeholder="&nbsp&nbsp&nbsp&nbsp&nbsp Enter Password" required/>
<button>LOGIN</button>
<p class="message">Not Registered? <a href="register.html">REGISTER </a></p>
</form>
</div>
</div>
</body>
</html>

