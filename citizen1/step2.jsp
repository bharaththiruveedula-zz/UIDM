<%@ include file="../includes/database.jsp" %>
<%@ include file="includes/header.jsp" %>
            <div align="center" class="navbar">
                <div align="center" class="navbar-inner" >
                    <div align="center" class="container" >
                        <ul class="nav" align="center">
                            <li><a href="#" id="step1">Step1</a></li>
                            <li><a href="1.jsp" id="step2">Step2</a></li>
                         	</ul>
                    </div>
                </div>
            </div>
      
            <form action ="step3.jsp" method="POST">
<%
				out.println("<div id='head'><H2>The details that you have entered is :</H2></div>");
				String myfirstname = request.getParameter("firstname");
				String mylastname = request.getParameter("lastname");
				String myfathername = request.getParameter("fathername");
				String mygender = request.getParameter("gender");
				String mydob = request.getParameter("dob");
				String mystate = request.getParameter("states");
				String mydistrict = request.getParameter("district");
				String mymandal = request.getParameter("mandal");
				String mycity = request.getParameter("city");
				String myaddress = request.getParameter("address");
				String mypincode = request.getParameter("pincode");
				
				//String username = session.getAttribute("username").toString();
				
				session.setAttribute("firstname", myfirstname);
				session.setAttribute("lastname",mylastname );
				session.setAttribute("fathername",myfathername);
				session.setAttribute("gender", mygender);
				session.setAttribute("dob", mydob);
				session.setAttribute("state", mystate);
				session.setAttribute("district", mydistrict);
				session.setAttribute("mandal", mymandal);
				session.setAttribute("city", mycity);
				session.setAttribute("address", myaddress);
				session.setAttribute("pincode", mypincode); 				
				session.setAttribute("username",username);
				
				out.println("<div id='step2div'><table align='center' cellpadding='10'> ");
				out.println("<tr><td> Your name is</td><td>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>"+ myfirstname + mylastname +"</td></tr>");
				out.println("<tr><td> Your Father name is</td><td>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>"+ myfathername+"</td></tr>");
				out.println("<tr><td> Your Gender is</td><td>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>"+ mygender+"</td></tr>");
				out.println("<tr><td> You were born&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>:</td><td>"+ mydob +"</td></tr>");
				out.println("<tr><td> You stay at</td><td>:</td><td> " + myaddress +"</td></tr>");
				
				out.println("<tr><td>City </td><td>:</td><td>" + mycity + mymandal + "</td></tr>");
				
				out.println("<tr><td>District</td><td>:</td><td>" + mydistrict + mystate  + "</td></tr>");
				out.println("<tr><td>Pin </td><td>:</td><td> " + mypincode + "</td></tr>");
				out.println("<tr><td colspan='3'><h5>Please check the details you have entered and proceed further. Or go back and edit.</h5> </td></tr>");
						
%>
<tr><td><input type="button" class="btn btn-danger" onClick="history.back();" value="Back"></td>
<td><input type="submit" value="Click to Verify" class="btn btn-primary"></tr></td>
</table></div>

</form>
<%@ include file="includes/footer.jsp" %>

