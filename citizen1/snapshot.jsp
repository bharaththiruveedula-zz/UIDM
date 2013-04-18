<%@ page import="java.io.File,java.io.FileOutputStream,java.io.IOException,java.util.Date,javax.servlet.Servlet,javax.servlet.ServletConfig,javax.servlet.ServletException,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse" %>
<%
	String username = session.getAttribute("username").toString();
	long serialVersionUID = 1L;
	String fileStoreURL = "";
	fileStoreURL = "D://Tomcat//webapps//UID//img";
	System.out.println(fileStoreURL);
	try {
		File f = new File(fileStoreURL);
		if (!f.exists()) {
			f.mkdirs();
		}
	} catch (Exception e) {
		// TODO: handle exception
	}
	try {
		//long time = new Date().getTime();
		
		FileOutputStream fileOutputStream = new FileOutputStream(
				fileStoreURL + "/"+username+".jpg");
		int res;
		while ((res = request.getInputStream().read()) != -1) {
			fileOutputStream.write(res);
		}
		fileOutputStream.close();
		System.out.println("Hello");
		response.sendRedirect("http://localhost:8080");

	} catch (Exception e) {
		e.printStackTrace();
	} finally {

	}
%>	