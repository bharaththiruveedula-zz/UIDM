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
				String c_username = request.getParameter("username");
				String c_password = request.getParameter("password");
				String c_Email = request.getParameter("Email");
				String c_mobile = request.getParameter("mobile");
			/* 	session.setAttribute("c_username", c_username);
				session.setAttribute("c_password",c_password);
				session.setAttribute("Email",c_Email); */
				PreparedStatement s=Conn.prepareStatement("SELECT * FROM citizen1 WHERE username='"+c_username+"' OR MOBILE = '"+c_mobile+"'");
				ResultSet rs = s.executeQuery();
				System.out.println("Hello123");
				if(rs.next())
				{
					System.out.println("Hello1234543");
					%>
					<script >
						alert("Sorry your mentioned details are in our database , Please check your details");
					</script>
					<%
					response.sendRedirect("http://localhost:8080/UID/agent/failed.jsp");
				}
				else
				{
					System.out.println("Hello123454366");
				String query = "INSERT INTO citizen1 VALUES ('"+c_username+"', '"+c_password+"','','', '', '', '', '', '','"+c_Email+"', '"+c_mobile+"',0,0,'','','','','','','','')";
				PreparedStatement Stmt=Conn.prepareStatement(query);
				Stmt.executeUpdate();
				System.out.println("Hello123454366"+query);
				session.setAttribute("c_username", c_username);
				session.setAttribute("c_password", c_password);
				session.setAttribute("c_EMAIL", c_Email);
				System.out.println("Hello123454366");
				%>
					<div id="citizenbox">
					<h1>Enter the Citizen Details</h1>
					<form action="step1.jsp">
						<select name="proofs" id="proofs">
							<option name="electricity" id="electricity" value="electricity">1. Electricity Bill</option>
							<option name="telephone" id="telephone">2. Telephone Bill(BSNL)</option>
							<option name="driving" id="driving">3. Driving License</option>
							<option name="voter" id="voter">4. Voter ID </option>
						</select>
						<br/>
					<br/>
							<input type="Submit" value="Save" class="btn" style="width:100px;height: 30px ;color:Black;"></td>
					</form>
					</div>
				<%
					}
				%>

<%@ include file="includes/footer.jsp" %>
