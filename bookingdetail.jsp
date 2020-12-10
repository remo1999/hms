<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/s41";
    String username = "root";
    String password = "root";
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<title>booking details</title>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="s

tylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif }
h1 {

  font-size:40px;
  font-weight: bold;
}
h2 {
  text-shadow: 0 0 7px #FF0000, 0 0 5px #0000FF;
   font-size:30px;
   font-weight: bold;
}
table {
  border-collapse: collapse;
  width: 100%;
}

th{
  background-color: blue;
  color: white;
  text-align: left;
  padding: 8px;
  font-size:20px;
}
td
{
  background-color:pink;
  color: black;
  text-align: center;
  padding: 8px;
  font-size:12px;
}
</style>

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

<br><br><br><br><body><center></center>
<table border="1">
<tr>
<th>ROOM ID </th>
<th>ROOM NAME </th>
<th>NUMBER OF ROOMS </th>
</tr>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/s41","root","root");
statement=connection.createStatement();
String sql ="select * from category";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("cid") %></td>
<td><%=resultSet.getString("catname") %></td>
<td><%=resultSet.getInt("noofrooms") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</center>
<body id="myPage">
<body class="w3-light-grey">
 <div class="w3-panel w3-blue">
  <center><h1 class="w3-opacity">ROOM DETAILS</h1></center> 
  </div>

<div class="w3-row-padding w3-padding-16">
    <div class="w3-third w3-margin-bottom">
      <img src="C:\Users\User\Desktop\notepad\room5.jpg" alt="Norway" height=500 width=500>
      <div class="w3-container w3-white">
        <h3>Single Room</h3>
        <h6 class="w3-opacity">fare 20,000\-</h6>
        <p>Single bed</p>
        <p>15m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i></p>
        <a href="single.html"><button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button></a>
      </div>
    </div>
    <div class="w3-third w3-margin-bottom">
      <img src="C:\Users\User\Desktop\notepad\room8.jpg" alt="Norway" height=500 width=500>
      <div class="w3-container w3-white">
        <h3>Double Room</h3>
        <h6 class="w3-opacity">fare 40,000\-</h6>
        <p>double-size bed</p>
        <p>25m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i></p>
        <a href="double.html"><button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button></a>
      </div>
    </div>
    <div class="w3-third w3-margin-bottom">
      <img src="C:\Users\User\Desktop\notepad\room6.jpg" alt="Norway" height=500 width=500>
      <div class="w3-container w3-white">
        <h3>Deluxe Room</h3>
        <h6 class="w3-opacity">fare 65,000\-</h6>
        <p>queen-size bed</p>
        <p>40m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i> <i class="fa fa-glass"></i> <i class="fa fa-cutlery"></i></p>
        <a href="deluxe.html"> <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button></a>
      </div>
    </div>
  </div>
<div class="w3-row-padding w3-padding-16">
    <div class="w3-third w3-margin-bottom">
      <img src="C:\Users\User\Desktop\notepad\room4.jpg" alt="Norway" height=500 width=500>
      <div class="w3-container w3-white">
        <h3> Signature Room</h3>
        <h6 class="w3-opacity">fare 45,000\-</h6>
        <p>two double  bed</p>
        <p>15m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i></p>
        <a href="Signature.html"><button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button></a>
      </div>
    </div>
    <div class="w3-third w3-margin-bottom">
      <img src="C:\Users\User\Desktop\notepad\room2.jpg" alt="Norway" height=500 width=500>
      <div class="w3-container w3-white">
        <h3>Superior  Room</h3>
        <h6 class="w3-opacity">fare 40,000\-</h6>
        <p>king-size bed</p>
        <p>25m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i></p>
        <a href="superior.html"><button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button></a>
      </div>
    </div>
    <div class="w3-third w3-margin-bottom">
      <img src="C:\Users\User\Desktop\notepad\room7.jpg" alt="Norway" height=500 width=500>
      <div class="w3-container w3-white">
        <h3> Super Deluxe Room</h3>
        <h6 class="w3-opacity">fare 65,000\-</h6>
        <p>king-size bed</p>
        <p>70m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i> <i class="fa fa-glass"></i> <i class="fa fa-cutlery"></i></p>
        <a href="super.html"> <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button></a>
      </div>
    </div>
  </div>
  <br><br>
    <h2 >SHOWCASE</h2>
  </div>
  <br>
  <center>
<div class="w3-row-padding">
      <div class="w3-half">
  &nbsp  <img src="C:\Users\User\Desktop\notepad\images\book.jpg" height=400 width=500 onclick="onClick(this)" alt="Concrete meets bricks"><br>
   &nbsp   <img src="C:\Users\User\Desktop\notepad\images\book1.jpg" height=400 width=500 onclick="onClick(this)" alt="Light, white and tight scandinavian design">&nbsp
     &nbsp<img src="C:\Users\User\Desktop\notepad\images\book2.jpg" height=400 width=500 onclick="onClick(this)" alt="White walls with designer chairs">
    </div>

    <div class="w3-half">
      <img src="C:\Users\User\Desktop\notepad\images\book3.jpg" height=400 width=500 onclick="onClick(this)" alt="Windows for the atrium">&nbsp
      <img src="C:\Users\User\Desktop\notepad\images\book4.jpg" height=400 width=500 onclick="onClick(this)" alt="Bedroom and office in one space">&nbsp
      <img src="C:\Users\User\Desktop\notepad\images\book5.jpg" height=400 width=500 onclick="onClick(this)" alt="Scandinavian design">
    </div>
  </div>
  </center>
<br>
  <!-- Modal for full size images on click-->
  <div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display='none'">
    <span class="w3-button w3-black w3-xxlarge w3-display-topright">×</span>
    <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
      <img id="img01" class="w3-image">
      <p id="caption"></p>
    </div>
  </div>
  <br><br>
  <footer class="w3-container w3-padding-32 w3-theme-d1 w3-center">
  <h4>Follow Us</h4>
  <a class="w3-button w3-large w3-teal" href="javascript:void(0)" title="Facebook"><i class="fa fa-facebook"></i></a>
  <a class="w3-button w3-large w3-teal" href="javascript:void(0)" title="Twitter"><i class="fa fa-twitter"></i></a>
  <a class="w3-button w3-large w3-teal" href="javascript:void(0)" title="Google +"><i class="fa fa-google-plus"></i></a>
  <a class="w3-button w3-large w3-teal" href="javascript:void(0)" title="Google +"><i class="fa fa-instagram"></i></a>
  <a class="w3-button w3-large w3-teal w3-hide-small" href="javascript:void(0)" title="Linkedin"><i class="fa fa-linkedin"></i></a>
  

  <div style="position:relative;bottom:100px;z-index:1;" class="w3-tooltip w3-right">
    <span class="w3-text w3-padding w3-teal w3-hide-small">Go To Top</span>   
    <a class="w3-button w3-theme" href="#myPage"><span class="w3-xlarge">
    <i class="fa fa-chevron-circle-up"></i></span></a>
  </div>
</footer>
  
<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}
</script>
</body>
</body>
</body>
</body>
</html>





    