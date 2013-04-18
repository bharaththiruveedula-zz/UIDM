<html>
<head>
	<title>Welcome to UID home page</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,500' rel='stylesheet' type='text/css'>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/bootstrap-carousel.js"></script>
	<script type="text/javascript" src="js/validate.js"></script>
    	<script type="text/javascript" src="js/carousel.js"></script>

</head>
<body>
	<div id="web">
		<div id="header">
			<!--<img src="img/logo2.jpg"></img>-->
			<h3>UNIQUE ID MANAGEMENT</h3>
		</div>
		<div id="nav">
			<ul>
				<li><a href="#" id="myhome">Home</li>
				<li><a href="" id="lb" >Login</a></li>
				<li><a href="#" id="register">Register</a></li>
				<li><a href="#" id="reg">Nearest  Regional Offices</a></li>
				<li><a href="#" id="contact">Contact Us</a></li>
				
			</ul>
		</div>

		<div id="myCarousel" class="carousel slide">
  <!-- Carousel items -->
  <div class="carousel-inner">
  <div class="active item"><img src="img/basic.jpg" alt="">
    	<div class="carousel-caption">
    	<h4>Step -1 :Registration of citizen</h4></div>	
    	</div>
    <div class="item"><img src="img/one.jpeg" alt="">
    	<div class="carousel-caption">
    	<h4>Main Page of Citizen's Portal</h4></div>	
    	</div>
    <div class="item"><img src="img/two.jpg" alt="">
    	<div class="carousel-caption">
    	<h4>Second Step to select the type of proof</h4></div></div>
    <div class="item"><img src="img/three.jpg" alt="">
    	<div class="carousel-caption">
    	<h4>Register details of the Citizen</h4></div></div>
    <div class="item"><img src="img/four.jpg" alt="">
    	<div class="carousel-caption">
    	<h4>Verification of  the details citizen has entered</h4></div></div>
    	<div class="item"><img src="img/five.jpg" alt="">
    	<div class="carousel-caption">
    	<h4>Take a snap Shot of citizen photo</h4></div></div>
  </div>
  <!-- Carousel nav -->
  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>
	<div id="registerbox">
		<%@ include file="register.jsp" %>
	</div>
	<div id="regdiv">
		<%@ include file="../myplaces.html" %>
	</div>
	<div id="Contact">
		<%@ include file="../Contact.jsp" %>
	</div>