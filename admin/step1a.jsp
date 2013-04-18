<%
	try
	{
		String username = session.getAttribute("username").toString();


%>
<%@ include file="../includes/database.jsp" %>
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
                <div id="title">Welcome To Admin's Portal</div>
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


<%
//String newuser = request.getParameter("add");
String newusername = request.getParameter("c_username");
String newpassword = request.getParameter("c_password");
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String dob = request.getParameter("dob");
String state = request.getParameter("state");
String district = request.getParameter("district");
String mandal = request.getParameter("mandal");
String city = request.getParameter("city");
String pincode = request.getParameter("pincode");
String address = request.getParameter("address");
String mobile = request.getParameter("mobile");
String email = request.getParameter("email");

if (newusername == null && newpassword==null && firstname==null && lastname==null && dob==null &&state==null && district==null && mandal==null&&city==null&&address==null) {

%>

<div id="step1div">
<form action="#" class="well">
<h2>Add a new Agent</h2>
<table>
		<tr>
			<td>Username :</td>
			<td><input type="text" id="c_username" name="c_username"></td>
		</tr>
		<tr>
			<td>Password :</td>
			<td><input type="password" id="c_password" name="c_password"></td>
		</tr>
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
			<td><input type="text" id="c_state" name="state"></td>
		</tr>
		<tr>
			<td>District:</td>
			<td><input type="text" id="c_district" name="district"></td>
		</tr>
		<tr>
			<td>Mandal:</td>
			<td><input type="text" id="c_mandal" name="mandal"></td>
		</tr>
		<tr>
			<td>Town</td>
			<td><input type="text" id="city" name="city"></td>
		</tr>
		<tr>
			<td>Address Details:</td>
			<td><input type="text" id="address" name="address"></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><input type="text" id="email" name="email"></td>
		</tr>
		<tr>
			<td>Mobile:</td>
			<td><input type="text" id="mobile" name="mobile"></td>
		</tr>
		<tr>
			<td>Postal Address:</td>
			<td><input type="text" id="pincode" name="pincode"></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Submit" id="submit" class="btn btn-primary" style="width:100px;height: 30px;"></td>
		</tr>
	</table>
</form>
	</div>

<%	
}


				
	if (newusername != null && newpassword != null) {
	
		String query = "INSERT INTO AGENT VALUES ('"+newusername+"', '"+newpassword+"','"+firstname+"','"+lastname+"','"+dob+"','"+state+"','"+district+"','"+mandal+"','"+city+"','"+email+"','"+mobile+"','"+address+"','"+pincode+"') ";
		System.out.println(query);
		PreparedStatement Stmt=Conn.prepareStatement(query);
				Stmt.executeUpdate();
				

out.println("<div id='details'><h3>The new Agent is added</h3> <br />");
out.println("<h4>Details: </h4><br />");
out.println("Username : " + newusername);
out.println("<br /><br />Password : " + newpassword);
out.println("<br/><br />First Name:"+firstname);
out.println("<br/><br />Last Name:"+lastname);
out.println("<br/><br />State:"+state);
out.println("<br/><br />District:"+district);
out.println("<br/><br />Mandal:"+mandal);
out.println("<br/><br />City:"+city);
out.println("<br/><br />Dob:"+dob);
out.println("<br/><br />Address:"+address);
out.println("<br/><br />Pincode:"+pincode);
%>

<br/>
<br/>
<input type="submit" name="back" id="back" value="back" onClick="history.back()" class="btn btn-primary">
</div>

<%
	}


	}
	catch(NullPointerException e)
	{
		out.println("Please Log in");
	}


%>