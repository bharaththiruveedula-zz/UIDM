<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Citizen QR Code Verification</title>
<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="../css/jquery-ui-1.8.20.custom.css">
    <script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../js/jquery-ui-1.8.20.custom.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script type="text/javascript" src="../js/bootstrap-tab.js"></script>
    <script type="text/javascript" src="script.js"></script>
    <script src="../js/jquery.autocomplete.js"></script>    
    <script type="text/javascript" src="../js/formvalidate.js"></script>
    <script type="text/javascript" src="script.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css" />
</head>
<body>
	<%
		String UID = request.getParameter("UID");
		session.setAttribute("UID", UID);
	%>
	<div id="citizenbox">
		<h1>Enter the Officer's Details</h1>
		<form method="POST" action="logincheck.jsp" class="well">
			<label for="username">Username:</label>
			<input type="text" id="username" name="username">
			<label for="password">Password:</label>
			<input type="password" id="password" name="password">
			<br/>
			<input type="submit" value="Submit" class="btn btn-primary">
		</form>
	</div>
</body>
</html>
