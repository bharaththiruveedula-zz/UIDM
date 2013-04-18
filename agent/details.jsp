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
				String c_firstname = request.getParameter("firstname");
				session.setAttribute("c_username", c_username);
				session.setAttribute("c_firstname", c_firstname);
			%>
            <%
            	PreparedStatement ps = Conn.prepareStatement("SELECT * FROM CITIZEN1 WHERE USERNAME='"+c_username+"'");
            	ResultSet rs = ps.executeQuery();
            	rs.next();
            	String firstname = rs.getString(3);
            	String lastname = rs.getString(5);
            	String state = rs.getString(6);
            	String district = rs.getString(7);
            	String mandal = rs.getString(8);
            	String town = rs.getString(9);
            	String email = rs.getString(10);
            	String mobile =  rs.getString(11);
            	String address = rs.getString(14);
            	String dob = rs.getString(16);
            	String pincode = rs.getString(17);
            	String fathername = rs.getString(20);
            	String gender = rs.getString(21);
            	String src = "../img/"+c_username+".jpg";	
            %>
            <div id="details">
            	<div id="head"><%=c_username %>'s Details</div>
            	<table>
					<tr>
						<td>First Name</td><td>:</td>
						<td><%= firstname%></td>
						
					</tr>
					<tr>
						<td>Last Name</td><td>:</td>
						<td><%= lastname %></td>
					</tr>
					<tr>
						<td>Father Name</td><td>:</td>
						<td><%=fathername %></td>
					</tr>
					<tr>
						<td>Gender</td><td>:</td>
						<td><%=gender %></td>
					</tr>
					<tr>
						<td>Date of Birth</td><td>:</td>
						<td><%=dob %></td>
					</tr>
					<tr>
						<td>State</td><td>:</td>
						<td><%= state  %></td>
					</tr>
					<tr>
						<td>District</td><td>:</td>
						<td><%= district  %></td>
					</tr>
					<tr>
						<td>Mandal</td><td>:</td>
						<td><%= mandal  %></td>
					</tr>
					<tr>
						<td>City/Town/Village</td><td>:</td>
						<td><%= town  %></td>
					</tr>
					<tr>
						<td>Address Details</td><td>:</td>
						<td><%= address  %></td>
					</tr>
					<tr>
						<td>Postal Address</td><td>:</td>
						<td><%=pincode  %></td>
					</tr>
					
		</table>
		<input type="button" class="btn" value="take the snapshot" onClick="window.location='imageupload.jsp'">
		<input type="button" class="btn btn-success" value="Generate the UID" onClick="window.location='generateuid.jsp'">
		<img src='../img/<%=c_username%>.jpg'></img>
      </div>
<%@ include file="includes/footer.jsp" %>