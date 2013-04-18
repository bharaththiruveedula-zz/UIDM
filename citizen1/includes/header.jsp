<%
	try
	{
	String username = session.getAttribute("username").toString();
%>
<html>
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
    <script type="text/javascript" src="JS/script.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css" />
    <body>
        <div id="wrapper">
            <header>
                <div id="title">Welcome To Citizen's Portal</div>
            	<div id="username">
            		<%=username%><br/>
            		<a href="includes/signout.jsp">Sign Out</a>
            	</div>
           </header>
