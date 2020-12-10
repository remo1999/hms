<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="javax.servlet.*" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>room confirmation</title>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
    body {
     background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
   font-family: 'Varela Round', sans-serif;
	}
	.modal-confirm {		
		color: #434e65;
		width: 525px;
	}
	.modal-confirm .modal-content {
		padding: 20px;
		font-size: 16px;
		border-radius: 5px;
		border: none;
	}
	.modal-confirm .modal-header {
		background: #F08080;
		border-bottom: none;   
        position: relative;
		text-align: center;
		margin: -20px -20px 0;
		border-radius: 6px 6px 0 0;
		padding: 40px;
	}
	.modal-confirm h4 {
		text-align: center;
		font-size: 36px;
		margin: 10px 0;
	}
	.modal-confirm .form-control, .modal-confirm .btn {
		min-height: 40px;
		border-radius: 3px; 
	}

	.modal-confirm .icon-box {
		color: #fff;		
		width: 95px;
		height: 95px;
		display: inline-block;
		border-radius: 50%;
		z-index: 9;
		border: 5px solid #fff;
		padding: 15px;
		text-align: center;
	}
	.modal-confirm .icon-box i {
		font-size: 64px;
		margin: -4px 0 0 -4px;
	}
	.modal-confirm.modal-dialog {
		margin-top: 80px;
	}
    .modal-confirm .btn {
        color: #fff;
        border-radius: 4px;
		background: #E6929E;
		text-decoration: none;
		transition: all 0.4s;
        line-height: normal;
		border-radius: 30px;
		margin-top: 10px;
		padding: 6px 20px;
        border: none;
    }
	.modal-confirm .btn:hover, .modal-confirm .btn:focus {
		background: #33CFFF;
		outline: none;
	}
	.modal-confirm .btn span {
		margin: 1px 3px 0;
		float: left;
	}
	.modal-confirm .btn i {
		margin-left: 1px;
		font-size: 20px;
		float: right;
	}
	.trigger-btn {
		display: inline-block;
		margin: 100px auto;
	}
	table {
  border-collapse: collapse;
  width: 75%;
}

th{
  background-color: #000000;
  color: white;
  text-align: left;
  padding: 8px;
  font-size:24px;
}
td
{
  background-color:#33C0FF;
  color: black;
  text-align: center;
  padding: 8px;
  font-size:16px;
}
</style>
</head>
<body background="C:\Users\User\Desktop\notepad\booking.jpg">
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="#home" class="w3-bar-item w3-button"><img src="C:\Users\User\Desktop\notepad\images\hotllogo.jpg" alt="spa" width=100 height=50 ></a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
       <a href="home.jsp" class="w3-bar-item w3-button">Home</a>
      <a href="aboutus.html" class="w3-bar-item w3-button">Aboutus</a>
      <a href="search.html" class="w3-bar-item w3-button">Search</a>
      <a href="contactus.html" class="w3-bar-item w3-button">Contactus</a>
      <a href="homepage2.jsp" class="w3-bar-item w3-button">Logout</a>
    </div>
  </div>
</div>

	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box">
					<i class="material-icons">&#xE876;</i>
				</div>
				
			</div>
			<div class="modal-body text-center">
				<h4>Room is Booked.</h4>	
				
			</div>
		</div>
	</div>
</div>
<center>
<table border="1">
<tr>
<th>UID</th>
<th>CHECK IN</th>
<th>CHECK OUT</th>
<th>NUMBER OF ROOMS</th>
<th>NUMBER OF ADULTS</th>
<th>NUMBER OF CHILDREN</th>
<th>ROOM NAME</th>
</tr>
<%
String id = (String)session.getAttribute("userid");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "s41";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
PreparedStatement st = connection.prepareStatement("select * from booking1 where userid=?");
st.setString(1,id);
resultSet=st.executeQuery();

while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("userid") %></td>
<td><%=resultSet.getString("checkin") %></td>
<td><%=resultSet.getString("checkout") %></td>
<td><%=resultSet.getInt("noofrooms") %></td>
<td><%=resultSet.getInt("noofadult") %></td>
<td><%=resultSet.getInt("noofchildren") %></td>
<td><%=resultSet.getString("roomname") %></td>
<td><a href="payment.html"><button class="btn btn-success" data-dismiss="modal"><span>confirm</span> <i class="material-icons">&#xE5C8;</i></button></a></td>
<form>
<td><button type='submit'  onclick='f1(this)'name="t1" value='<%=resultSet.
getString("bid") %>' formaction="delete.jsp" >cancel</button>&nbsp;&nbsp;&nbsp;&nbsp;</td>

</tr>

</form>
<%

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</center>     
</body>
</html>                                                                           
    