<%@ include file="includes/database.jsp" %>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/bootstrap-carousel.js"></script>
	<script type="text/javascript" src="js/validate.js"></script>
    <script type="text/javascript" src="js/carousel.js"></script>

</head>
<body>
	<div id="web">
		<div id="header">
			
		</div>
		<div id="nav">
			<ul>
				<li><a href="#" id="myhome">Home</li>
				<li><a href="" id="lb" >Login</a></li>
				<li><a href="#" id="register">Register</a></li>
				<li><a href="#" id="reg">Nearest  Regional Offices</a></li>
				<li>Contact Us</li>
				<li><input type="text" onfocus="focused()" onBlur="blurred()" id="text"></li>
			</ul>
		</div>
	<div id="registerbox">
		<%@ include file="includes/register.jsp" %>
	</div>
	<div id="regdiv">
		<%@ include file="../myplaces.html" %>
	</div>
		<div id="content">
			<%
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				String Email = request.getParameter("Email");
				String mobile = request.getParameter("mobile");
				PreparedStatement s=Conn.prepareStatement("SELECT * FROM citizen1 WHERE username='"+username+"' OR EMAIL='"+Email+"' OR MOBILE = '"+mobile+"'");
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
					response.sendRedirect("failed.jsp");
				}
				else
				{
				String query = "INSERT INTO citizen1 VALUES ('"+username+"', '"+password+"','','', '', '', '', '', '','"+Email+"', '"+mobile+"',0,0,'','','','','','','','')";
				PreparedStatement Stmt=Conn.prepareStatement(query);
				Stmt.executeUpdate();
				session.setAttribute("UserName", username);
				session.setAttribute("PassWord", password);
				session.setAttribute("EMAIL", Email);
			%>
			<%@ include file="email.jsp" %>
			<br/><br/>
			<p>
						<h4>Congratulations ! You have successfully registered to the UID website . Please Check our email for your Details</h4><br/>
						<input type="button" class="btn btn-danger" onclick="window.location.replace('http://localhost:8080/UID')" value="Go to HomePage"></input>
			</p>
		</div><!---End of Content------>
		
	</div><!----------------End  of Web-------------->
<%@ include file="includes/footer.jsp" %>
<%
}
%>