<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}

</style>
<body>

<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
<a href="#home" class="w3-bar-item w3-button"><img src="C:\Users\User\Desktop\notepad\images\hotllogo.jpg" alt="spa" width=100 height=50 ></a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
       <a href="homepage2.jsp" class="w3-bar-item w3-button">HOME</a>
      <a href="register.html" class="w3-bar-item w3-button">REGISTER</a>
      <a href="loginn.jsp" class="w3-bar-item w3-button">LOGIN</a>
   
    </div>
  </div>
</div>
<div class="w3-container">
</div>

<div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides w3-animate-top" src="C:\Users\User\Desktop\notepad\home1.jpg" width="1000" height="400">
  <img class="mySlides w3-animate-bottom" src="C:\Users\User\Desktop\notepad\home2.jpg" width="1000" height="400">
  <img class="mySlides w3-animate-top" src="C:\Users\User\Desktop\notepad\home3.jpg" width="10000" height="400">
 
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>
<div class="w3-container w3-padding-64 w3-center" id="team">


<div class="w3-row"><br>

<div class="w3-quarter">
  <img src="C:\Users\User\Desktop\notepad\wifi.png" alt="Boss" style="width:45%" class="w3-circle w3-hover-opacity">
  <h3>Free Wifi</h3>
</div>

<div class="w3-quarter">
  <img src="C:\Users\User\Desktop\notepad\key.png" alt="Boss" style="width:45%" class="w3-circle w3-hover-opacity">
  <h3>Room Services</h3>

</div>

<div class="w3-quarter">
  <img src="C:\Users\User\Desktop\notepad\car.png" alt="Boss" style="width:45%" class="w3-circle w3-hover-opacity">
  <h3>Free Parking</h3>

</div>

<div class="w3-quarter">
  <img src="C:\Users\User\Desktop\notepad\user.png" alt="Boss" style="width:45%" class="w3-circle w3-hover-opacity">
  <h3>Customer Support</h3>

</div>

</div>
</div>

<hr><h1>Gallery</h1></hr>


<div class="row">
  <div class="column">
    <img src="C:\Users\User\Desktop\notepad\gallery4.jpg" alt="gallery1" width="400" height="300">
  </div>
  <div class="column">
    <img src="C:\Users\User\Desktop\notepad\gallery2.jpg" alt="gallery2" width="400" height="300">
  </div>
  <div class="column">
    <img src="C:\Users\User\Desktop\notepad\gallery3.jpg" alt="gallery3" width="400" height="300">
  </div>
</div>
<div class="row">
  <div class="column">
    <img src="C:\Users\User\Desktop\notepad\gallery1.jpg" alt="gallery4" width="400" height="300">
  </div>
  <div class="column">
    <img src="C:\Users\User\Desktop\notepad\gallery5.jpg" alt="gallery5" width="400" height="300">
  </div>
  <div class="column">
    <img src="C:\Users\User\Desktop\notepad\gallery6.jpg" alt="gallery6" width="400" height="300">
  </div>
</div>

<footer class="w3-container w3-padding-64 w3-light-grey w3-center w3-opacity w3-xlarge" style="margin-top:128px">
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
</footer>
</body>
</html>


