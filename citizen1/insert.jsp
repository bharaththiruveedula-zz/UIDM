<%@ include file="../includes/database.jsp" %>
<%@ include file="includes/header.jsp" %> 
<%
System.out.println("step0");
//String username = session.getAttribute("username").toString();
String myfirstname = session.getAttribute("firstname").toString();
String mylastname = session.getAttribute("lastname").toString();
String myfathername = session.getAttribute("fathername").toString();
String mygender = session.getAttribute("gender").toString();
System.out.println(myfathername);
String mydob = session.getAttribute("dob").toString();
System.out.println(myfathername);
String mystate = session.getAttribute("state").toString();
System.out.println(mystate);
String mydistrict = session.getAttribute("district").toString();
System.out.println(myfathername);
String mymandal = session.getAttribute("mandal").toString();
System.out.println(myfathername);
String mycity = session.getAttribute("city").toString();
System.out.println(myfathername);
String myaddress = session.getAttribute("address").toString();
System.out.println(myfathername);
String mypincode = session.getAttribute("pincode").toString();
System.out.println(myfathername);
String proofs = session.getAttribute("proof").toString(); 
System.out.println(myfathername);
System.out.println("step1");
%>
            <div align="center" class="navbar">
                <div align="center" class="navbar-inner" >
                    <div align="center" class="container" >
                        <ul class="nav" align="center">
                            <li><a href="#" id="step1" Style='color:white;'>Step1</a></li>
                            <li><a href="#" id="step2">Step2</a></li>
                         	</ul>
                    </div>
                </div>
            </div>
<%

	
	String query1 = "SELECT * from "+proofs+" WHERE firstname = '"+myfirstname+"' AND lastname ='"+mylastname+"' AND DOB = '"+mydob+"'";
	
	PreparedStatement Stmt1=Conn.prepareStatement(query1);
	ResultSet result1 = Stmt1.executeQuery(); 
	System.out.println("step2");
    if (result1.next()) 
    {

%>
  		<div align="center" class="container" id="container">
        <%
                 out.println("<h1 style='color:green;'>Success.. We have found you.</h1>");
			
        System.out.println("step3");
        %>
			     <div id='success'>Your details have been verified in the repective database , and been confirmed to grant a UID      	
        			Please submit the originals to the nearest regional office and get your UID</div>
    	</div>
    <%   
    PreparedStatement s=Conn.prepareStatement("UPDATE citizen1 SET firstname='"+myfirstname+"',lastname='"+mylastname+"',dob='"+mydob+"',state='"+mystate+"',district='"+mydistrict+"',mandal='"+mymandal+"',town='"+mycity+"',address='"+myaddress+"',pincode='"+mypincode+"',fathername='"+myfathername+"',gender='"+mygender+"', proofs='"+proofs+"',verified=1 WHERE username='"+username+"'");
    s.executeUpdate();
    }
    else 
    {
    %>
                  <div align="center" class="container" >
        <%           	
                 out.println("<h1>Sorry.. </h1>");
        %>
	</div>
    
    <%
                 out.println("Our database does not show your records.");
                 out.println("Sorry , your details have not been verified correctly. Please try if there were any mistake in the details.");
					%>
					<input type="button" class="btn" onClick="window.location='http://localhost:8080/UID/citizen1'" value="Back" >
                 <%
                 }
%>
</div>

</div>            
<%@ include file="includes/footer.jsp" %>
            
