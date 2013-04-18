<%@ include file="../includes/database.jsp" %>
<html>
<body>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
String UID = session.getAttribute("UID").toString();
System.out.println("SELECT username,password FROM uid WHERE username='"+username+"' AND password='"+password+"'");
PreparedStatement stmt = Conn.prepareStatement("SELECT username,password FROM UID WHERE username='"+username+"' AND password='"+password+"'");
System.out.println("Statement loaded sucesssssssssssssssssss");
ResultSet rs = stmt.executeQuery();
System.out.println(username+password);
if(rs.next())
{
	session.setAttribute("username", username);
	session.setAttribute("password", password);
	response.sendRedirect("details.jsp");
}
else
{
	%>
	<script>
		alert("You Have Entered Wrong Username or Password");
		console.log("http://localhost/UID/qrc/index.jsp?UID="<%=UID %>);
		window.location="http://localhost/UID/qrc/index.jsp?UID="<%=UID %>;
	</script>
	<%
	response.sendRedirect("index.jsp?UID="+UID);


}
%>
</body>
</html>