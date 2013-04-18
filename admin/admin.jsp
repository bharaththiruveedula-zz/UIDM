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
    <body>
        <div id="wrapper">
            <header>
                <div id="title">Welcome To Admin Portal</div>
                 <div id="username">
            		<%=username%><br/>
            		<a href="includes/signout.jsp">Sign Out</a>
            	</div>
            </header>
            <div class="navbar">
                <div class="navbar-inner">
                    <div class="container">
                        <ul class="nav">
                            <li><a href="step1a.jsp" id="step1">Add new Agent</a></li>
                            <li><a href="step2a.jsp" id="step2">Edit user details</a></li>
                            <li><a href="step3a.jsp" id="step3">View Agent details</a></li>
                        	<li><a href="step4a.jsp" id="step4">View Citizen details</a></li>
                        </ul>
                        
                    </div>
                </div>
            </div>
			
        </div>
    </body>
</html>



<%

	}
	catch(NullPointerException e)
	{
		out.println("Please Log in");
	}

%>
