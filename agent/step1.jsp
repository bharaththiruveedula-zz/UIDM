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
		String c_username = session.getAttribute("c_username").toString();
		String proof = request.getParameter("proofs");
		session.setAttribute("proof", proof);
		String query1 = "SELECT * from  citizen1 where username='"+c_username+"'";
		PreparedStatement Stmt1=Conn.prepareStatement(query1);
		ResultSet rs = Stmt1.executeQuery(); 
		rs.next();
		String firstname= rs.getString(3);
        if(firstname.equals("")) 
        {       	
%> 
	<div id="citizenbox">
	<h1>Enter the Citizen Details</h1>
	<table>
		<form class="well" action="step2.jsp" onSubmit="return validate()">
		<tr>
			<td>First Name:</td>
			<td><input type="text" id="firstname" name="firstname"></td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><input type="text" id="lastname" name="lastname"></td>
		</tr>
		<tr>
			<td>Date of Birth:</td>
			<td><input type="text" id="dob" name="dob"></td>
		</tr>
		<tr>
			<td>State:</td>
			<td><input type="text" id="state" name="state"></td>
		</tr>
		<tr>
			<td>District:</td>
			<td><input type="text" id="district" name="district"></td>
		</tr>
		<tr>
			<td>Mandal:</td>
			<td><input type="text" id="mandal" name="mandal"></td>
		</tr>
		<tr>
			<td>City/Town/Village:</td>
			<td><input type="text" id="city" name="city"></td>
		</tr>
		<tr>
			<td>Address Details:</td>
			<td><input type="text" id="address" name="address"></td>
		</tr>
		<tr>
			<td>Postal Address:</td>
			<td><input type="text" id="pincode" name="pincode"></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Submit" id="submit" class="btn btn-primary" style="width:100px;height: 30px;"></td>
		</tr>
		</form>
	</table>
	</div>
<%
	}
    else
    {
    	%>
    		<table>
		<tr>
			<td>First Name:</td>
			<td><%= rs.getString(3)%></td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><%= rs.getString(5) %></td>
		</tr>
		<tr>
			<td>Date of Birth:</td>
			<td><%=rs.getString(3) %></td>
		</tr>
		<tr>
			<td>State:</td>
			<td><%= rs.getString(6)  %></td>
		</tr>
		<tr>
			<td>District:</td>
			<td><%= rs.getString(7)  %></td>
		</tr>
		<tr>
			<td>Mandal:</td>
			<td><%= rs.getString(8)  %></td>
		</tr>
		<tr>
			<td>City/Town/Village:</td>
			<td><%= rs.getString(9)  %></td>
		</tr>
		<tr>
			<td>Address Details:</td>
			<td><%= rs.getString(14)  %></td>
		</tr>
		<tr>
			<td>Postal Address:</td>
			<td><%= rs.getString(5)  %></td>
		</tr>
</table>
    	<%
    }
%>
<script>
	jQuery(function(){
		$("#state").autocomplete("list.jsp");
	});
</script>
<%@ include file="includes/footer.jsp" %>
