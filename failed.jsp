<%@ include file="includes/database.jsp" %>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
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
			
		</div>
		<div id="nav">
			<ul>
				<li><a href="#" id="myhome">Home</li>
				<li><a href="" id="lb" >Login</a></li>
				<li><a href="#" id="register">Register</a></li>
				<li><a href="#" id="reg">Nearest  Regional Offices</a></li>
				<li>Contact Us</li>
				<li><input type="text" onfocus="focused()" onBlur="blurred()" id="text"></li>
			</ul>
		</div>

		
	<div id="registerbox">
		<%@ include file="includes/register.jsp" %>
	</div>
	<div id="regdiv">
		<%@ include file="myplaces.html" %>
	</div>
		<div id="content">
			<script language="javascript">
				$('.carousel slide').css("display","none");
			</script>
			Sorry your mentioned details are in our database , Please check your details
			<br/>
			<input type="button" class="btn btn-danger" value="Go to Home Page" onClick="window.location='index.jsp'">
		</div>
<%@ include file="includes/footer.jsp" %>