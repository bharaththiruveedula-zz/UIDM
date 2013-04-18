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

            <form action ="step3.jsp" method="POST">
<%
				out.println("<div id='head2'><H2>The details that you have entered is :</H2></div>");
				String myfirstname = request.getParameter("firstname");
				String mylastname = request.getParameter("lastname");
				String mydob = request.getParameter("dob");
				String mystate = request.getParameter("state");
				String mydistrict = request.getParameter("district");
				String mymandal = request.getParameter("mandal");
				String mycity = request.getParameter("city");
				String myaddress = request.getParameter("address");
				String mypincode = request.getParameter("pincode");
				
				//String username = session.getAttribute("username").toString();
				
				session.setAttribute("firstname", myfirstname);
				session.setAttribute("lastname",mylastname );
				session.setAttribute("dob", mydob);
				session.setAttribute("state", mystate);
				session.setAttribute("district", mydistrict);
				session.setAttribute("mandal", mymandal);
				session.setAttribute("city", mycity);
				session.setAttribute("address", myaddress);
				session.setAttribute("pincode", mypincode); 				
				session.setAttribute("username",username);
				
				out.println("<div id='step2div'><table align='center' cellpadding='10'> ");
				out.println("<tr><td> Your name is</td><td>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>"+ myfirstname + mylastname +"</td></tr>");
				
				out.println("<tr><td> You were born&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>:</td><td>"+ mydob +"</td></tr>");
				out.println("<tr><td> You stay at</td><td>:</td><td> " + myaddress +"</td></tr>");
				
				out.println("<tr><td>City </td><td>:</td><td>" + mycity + mymandal + "</td></tr>");
				
				out.println("<tr><td>District</td><td>:</td><td>" + mydistrict + mystate  + "</td></tr>");
				out.println("<tr><td>Pin </td><td>:</td><td> " + mypincode + "</td></tr>");
				out.println("<tr><td colspan='3'><h5>Please check the details you have entered and proceed further. Or go back and edit.</h5> </td></tr>");
						
%>
<tr><td><input type="button" class="btn btn-danger" onClick="history.back();" value="Back"></td>
<td><input type="submit" value="Click to Verify" class="btn btn-primary"></tr></td>
</table></div>

</form>
<%@ include file="includes/footer.jsp" %>