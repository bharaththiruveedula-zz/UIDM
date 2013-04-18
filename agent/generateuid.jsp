<%@ include file="../includes/database.jsp" %>
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
    <script type="text/javascript" src="../js/bootstrap-tab.js"></script>
    <script type="text/javascript" src="script.js"></script>
    <script src="../js/jquery.autocomplete.js"></script>    
    <script type="text/javascript" src="../js/formvalidate.js"></script>
    <script type="text/javascript" src="script.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css" />
</head>
<body>
	<div id="topdiv">
		<a href="index.jsp">Home</a>
		<a href="registeruser.jsp">Register a New User</a>
		<div id="username">
            		<%=username%><br/>
            		<a href="includes/signout.jsp">Sign Out</a>
        </div>
	</div>
	<%
	String c_username = session.getAttribute("c_username").toString();
	PreparedStatement s = Conn.prepareStatement("SELECT UID FROM citizen1 WHERE username='"+c_username+"'");
	ResultSet rs = s.executeQuery();
	rs.next();
	if(rs.getString(1).equals(""))
	{%>
	<div id="citizenbox">
		<h1>Enter the Citizen Details</h1>
		<form method="POST" action="fileupload.jsp" class="well" enctype="multipart/form-data">
			<input type="file" name="file" size="X" />
			<input type="submit" value="Generate UID  " class="btn btn-success" id="generate">
		</form>
	</div>
	<%
	}
	else
	{
		%>
			<h6><img src="../img/Warning.png">Sorry this user already has an UID,<%=rs.getString(1) %></h6>
		<%
	}
	%>
</body>
</html>
<%@ include file="includes/footer.jsp" %>