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



<div id="step3div"><div id="state">State :</div><div id="district"> District :</div><div id="mandal">Mandal :</div><div id="village">Village :</div></div>	<br/>
<div id="step3div1">
<form action="">
<input type="text" name="states" id="states"/>
<input type="text" name="district" id="districts"/>
<input type="text" name="mandal" id="mandals"/>
<input type="text" name="village" id="villages"/>
<input type="submit" name="submit" id="submit" value="Show">
</div>
</form>

<%

String getstates = request.getParameter("states");
String getdistrict = request.getParameter("district");
String getmandal = request.getParameter("mandal");
String getvillage = request.getParameter("village");
String getfirstname = request.getParameter("firstname");
String getlastname = request.getParameter("lastname");

%>
 
 <h3>* Please make sure all the field values</h3>

<% 
if (getstates != null) {

                String query1 = "SELECT * from  agent WHERE state='"+getstates+"' OR district='"+getdistrict+"' OR town='"+getvillage+"' ";  
                PreparedStatement Stmt1=Conn.prepareStatement(query1);
                ResultSet result1 = Stmt1.executeQuery();     
                out.println("<table border='1' cellspacing='5'><th>Username:</th><th>Password</th><th>first name</th><th>Last Name:</th><th>Email:</th>");
                while(result1.next()){
                out.println("<tr><td>"+result1.getString(1)+"</td>");
                out.println("<td>"+result1.getString(2)+"</td>");
                out.println("<td>"+result1.getString(3)+"</td>");
                out.println("<td>"+result1.getString(5)+"</td>");
                out.println("<td>"+result1.getString(10)+"</td>");
                out.println("</tr>");
                                               

            }
                out.println("</table></div>");
                
}



%>
<%
		
	}
	catch(NullPointerException e)
	{
		out.println("Please Log in");
	}

%>
