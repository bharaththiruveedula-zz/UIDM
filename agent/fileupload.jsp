<%@ include file="../includes/database.jsp" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
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
	String c_username = session.getAttribute("c_username").toString();
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   //ServletContext context = pageContext.getServletContext();

   String filePath ="D://Tomcat//webapps//UID//proofs//";
   // Verify the content type
   String contentType = request.getContentType();
   if ((contentType.indexOf("multipart/form-data") >= 0)) {

      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File(".//files//"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      try{ 
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();
         out.println("<html>");
         out.println("<head>");
         out.println("<title>JSP File upload</title>");  
         out.println("</head>");
         out.println("<body>");
         while ( i.hasNext () ) 
         {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () )	
            {
            // Get the uploaded file parameters
            String fieldName = fi.getFieldName();
            String fileName = fi.getName();
            boolean isInMemory = fi.isInMemory();
            long sizeInBytes = fi.getSize();
            // Write the file
            if( fileName.lastIndexOf("\\") >= 0 ){
            System.out.println("hello");
            file = new File( filePath +c_username) ;
            }else{
            file = new File( filePath +c_username) ;
            }
            fi.write( file ) ;

            while(true)
            {
            	Random randomGenerator = new Random();
            	char[] characters={'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'};
            	StringBuffer UID = new StringBuffer();
            	System.out.println(characters[0]);
            	for(int j=1;j<=10;j++)
            	{
            		int randomInt = randomGenerator.nextInt(63);
            		char c=characters[randomInt];
            		UID.append(c);
            	}
            	System.out.println(UID);
            	PreparedStatement s = Conn.prepareStatement("SELECT * FROM citizen1 WHERE UID='"+UID+"'");
            	ResultSet rs = s.executeQuery();
            	if(rs.next())
            	{
            		continue;
            	}
            	else
            	{
            		PreparedStatement Stmt=Conn.prepareStatement("UPDATE CITIZEN1 SET UID = '"+UID+"',GENERATE_ID=1,MODIFIED_BY='"+username+"' WHERE username='"+c_username+"' ");
            		System.out.println("Statement loaded sucesssssssssssssssssss");
            		Stmt.executeUpdate();
            		System.out.println("YOU UID IS SET");
            		out.println("<h1>YOU ARE SUCCESSFULLY RECEIVED YOUR UID <div style='color:green;font-size:30px;' > <c>"+UID+"</c></div></h1>");
            		break;
            	}
            }
            

            }
         }
         out.println("</body>");
         out.println("</html>");
      }catch(Exception ex) {
         System.out.println(ex);
      }
   }else{
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }
%>
<%@ include file="includes/footer.jsp" %>