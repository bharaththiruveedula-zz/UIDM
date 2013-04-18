<%@ include file="database.jsp" %>
<html>
<body>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
String loginas = request.getParameter("loginas");

String query = "SELECT username,password FROM "+loginas;

PreparedStatement Stmt=Conn.prepareStatement(query);
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
if(rs.next())
{
	out.println("You have logged in");
}
else
{
	out.println("You have not logged in");
}
%>
</body>
</html>