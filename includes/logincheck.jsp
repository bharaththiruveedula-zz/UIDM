<%@ include file="database.jsp" %>
<html>
<body>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
String loginas = request.getParameter("loginas");
System.out.println("SELECT username,password FROM "+loginas+" WHERE username='"+username+"' AND password='"+password+"'");
PreparedStatement stmt = Conn.prepareStatement("SELECT username,password FROM "+loginas+" WHERE username='"+username+"' AND password='"+password+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
ResultSet rs = stmt.executeQuery();
System.out.println(username+password);
if(rs.next())
{
	session.setAttribute("username", username);
	session.setAttribute("password", password);
	System.out.println(username+password);
	if(loginas.equals("citizen1"))
	{
		PreparedStatement stmt1 = Conn.prepareStatement("SELECT verified FROM citizen1 WHERE username='"+username+"' AND password='"+password+"'");
		System.out.println("Statement loaded sucesssssssssssssssssss");
		ResultSet rs1 = stmt1.executeQuery();
		rs1.next();
		if(rs1.getInt(1)==1)
			response.sendRedirect("../citizen1/final.jsp");
		else
			response.sendRedirect("../citizen1/index.jsp");
	}
	
	else if(loginas.equals("admin"))	
	{
		if(username.equals("admin") && password.equals("root"))
		{
			response.sendRedirect("../admin/index.jsp");
		}
		else
		{
			response.sendRedirect("../admin/admin.jsp");
		}
	}
	else
	response.sendRedirect("../"+loginas+"/index.jsp");
}
else
{
	out.println("sign out");
	%>
	<script>
		alert("You Have Entered Wrong Username or Password");
	</script>
	<%
	response.sendRedirect("../index.jsp");


}
%>
</body>
</html>