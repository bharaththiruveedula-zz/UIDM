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
    <script src="../js/jquery.autocomplete.js"></script>    
    <script type="text/javascript" src="../js/formvalidate.js"></script>
    <script type="text/javascript" src="script.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css" />
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

<%
String myfirstname = session.getAttribute("firstname").toString();
String mylastname = session.getAttribute("lastname").toString();
 String mydob = session.getAttribute("dob").toString();
String mystate = session.getAttribute("state").toString();
String mydistrict = session.getAttribute("district").toString();
String mymandal = session.getAttribute("mandal").toString();
String mycity = session.getAttribute("city").toString();
String myaddress = session.getAttribute("address").toString();
String mypincode = session.getAttribute("pincode").toString();
String proofs = session.getAttribute("proof").toString(); 
%>
            <div align="center" class="navbar">
                <div align="center" class="navbar-inner" >
                    <div align="center" class="container" >
                        <ul class="nav" align="center">
                            <li><a href="#" id="step1" Style='color:white;'>Step1</a></li>
                            <li><a href="#" id="step2">Step2</a></li>
                         	</ul>
                    </div>
                </div>
            </div>
 <%
    PreparedStatement s=Conn.prepareStatement("UPDATE citizen1 SET firstname='"+myfirstname+"',lastname='"+mylastname+"',dob='"+mydob+"',state='"+mystate+"',district='"+mydistrict+"',mandal='"+mymandal+"',town='"+mycity+"',address='"+myaddress+"',pincode='"+mypincode+"',proofs='"+proofs+"',verified=1 WHERE username='"+username+"'");
    s.executeUpdate();
    response.sendRedirect("generateuid.jsp");
%>
<%@ include file="includes/footer.jsp" %>
            
