<%@ include file="../includes/database.jsp" %>
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
                            <li><a href="step3a.jsp" id="step3">View User details</a></li>
                        </ul>
                    </div>
                </div>
            </div>

<%

String newuser1 = request.getParameter("reset");
String newusername1 = request.getParameter("c_username");
String newpassword1 = request.getParameter("c_password");


if (newuser1 == null && newusername1 == null && newpassword1 == null) {

%>
<div id="step2div">
<h2>Edit Agent/Administrator password</h2>

<br />
<form action="#" class="well">

User :<select name="reset" id="reset">
<option name="Agent" id="Agent" value="agent">Agent</option>
<option name="Admin" id="Admin" value="admin">Administrator</option>
</select>
<br />
<br/>
Username:
<input type="text" name="c_username" id="c_username">
<br/>
<br/>
Password:
<input type="password" name="c_password" id="c_password">
<br/>
<br/>
<input type="submit" class="btn" name="reset_btn" id="reset_btn" value="Reset" >

</form>
</div>
<%	
}


				
	if (newuser1 != null && newusername1 != null && newpassword1 != null) {
	
		String query = "UPDATE "+newuser1+" SET password='"+newpassword1+"' WHERE username='"+newusername1+"'";
		PreparedStatement Stmt=Conn.prepareStatement(query);
		Stmt.executeUpdate();
				

out.println("<div id='inf'><h3>The " + newuser1 + " password is reset .</h3><br />");
out.println("<h4>Details </h4><br />");
out.println("Username : " + newusername1);
out.println("<br/><br />Password : " + newpassword1);
%>

<form action="index.jsp">
<input type="submit" name="back" id="back" value="back" class="btn" >
</form>
</div>
<%

}
%>
<%

	}
	catch(NullPointerException e)
	{
		out.println("Please Log in");
	}

 %>
