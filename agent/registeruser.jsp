<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	try
	{
	String username = session.getAttribute("username").toString();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Agent Home Page</title>
<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="../css/jquery-ui-1.8.20.custom.css">
    <script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../js/jquery-ui-1.8.20.custom.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script type="text/javascript" src="../js/formvalidate.js"></script>
    <script type="text/javascript" src="script.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css" />
    <script type="text/javascript" src="validate.js"></script>
</head>
<body>
	<div id="topdiv">
		<a href="#">Home</a>
		<a href="registeruser.jsp">Register a New User</a>
		<div id="username">
            		<%=username%><br/>
            		<a href="includes/signout.jsp">Sign Out</a>
        </div>
	</div>
		<div id="regtitle">Registration Form</div>
		<form class="well" id="reguser" name="register" method="post" action="registered.jsp" onSubmit="return validate()">
			<table cellpadding="20px">
			<tr><td><label for="username" class="span2">Username:</label></td>
			<td><input type="text" id="username" name="username"></td></tr>
			<tr><td><label for="Password">Password:</label></td>
			<td><input type="password" id="password" name="password"></td></tr>
			<tr><td><label for="ConfirmPassword">Confirm Password:</label></td>
			<td><input type="password" id="ConfirmPassword"></td></tr>
			<tr><td><label for="Email">Email-ID:</label></td>
			<td><input type="email" id="Email" name="Email"></td></tr>
			<tr><td><label for="mobile">Mobile Number:</label></td>
			<td><input type="text" id="mobile" name="mobile"></td></tr>
			<tr>
				<td></td>
				<td><input type="submit" class="btn btn-primary" value="Register"></td>
			</tr>
			</table>
		</form>
</body>
</html>
<%@ include file="includes/footer.jsp" %>