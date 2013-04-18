<%@page import="java.sql.*" language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
String uri="jdbc:odbc:UID";
Connection Conn=DriverManager.getConnection(uri,"","");
System.out.println("driver loaded sucesssssssssssssssssss");
%>