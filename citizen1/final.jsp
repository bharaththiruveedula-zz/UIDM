<%@ include file="../includes/database.jsp" %>
<%@ include file="includes/header.jsp" %>
            <div align="center" class="navbar">
                <div align="center" class="navbar-inner" >
                    <div align="center" class="container" >
                        <ul class="nav" align="center">
                            <li><a href="#" id="home">Home</a></li>
                            <li><a href="generate.jsp" id="step2">Generated UID</a></li>
                         	</ul>
                    </div>
                </div>
            </div>
            <%
            	PreparedStatement ps = Conn.prepareStatement("SELECT * FROM CITIZEN1 WHERE USERNAME='"+username+"'");
            	ResultSet rs = ps.executeQuery();
            	rs.next();
            	String firstname = rs.getString(3);
            	String lastname = rs.getString(5);
            	String state = rs.getString(6);
            	String district = rs.getString(7);
            	String mandal = rs.getString(8);
            	String town = rs.getString(9);
            	String email = rs.getString(10);
            	String mobile =  rs.getString(11);
            	String address = rs.getString(14);
            	String dob = rs.getString(16);
            	String pincode = rs.getString(17);
            	String fathername = rs.getString(20);
            	String gender = rs.getString(21);
            	//String src = "D://Tomcat/webapps/UID/img/bharath.jpg";	
            %>
            <div id="finallist">
            	<table>
					<tr>
						<td>First Name</td><td>:</td>
						<td><%= firstname%></td>
						
					</tr>
					<tr>
						<td>Last Name</td><td>:</td>
						<td><%= lastname %></td>
					</tr>
					<tr>
						<td>Father Name</td><td>:</td>
						<td><%=fathername %></td>
					</tr>
					<tr>
						<td>Gender</td><td>:</td>
						<td><%=gender %></td>
					</tr>
					<tr>
						<td>Date of Birth</td><td>:</td>
						<td><%=dob %></td>
					</tr>
					<tr>
						<td>State</td><td>:</td>
						<td><%= state  %></td>
					</tr>
					<tr>
						<td>District</td><td>:</td>
						<td><%= district  %></td>
					</tr>
					<tr>
						<td>Mandal</td><td>:</td>
						<td><%= mandal  %></td>
					</tr>
					<tr>
						<td>City/Town/Village</td><td>:</td>
						<td><%= town  %></td>
					</tr>
					<tr>
						<td>Address Details</td><td>:</td>
						<td><%= address  %></td>
					</tr>
					<tr>
						<td>Postal Address</td><td>:</td>
						<td><%=pincode  %></td>
					</tr>
					
		</table>
		<img src="../img/<%=username%>.jpg"></img>
      </div>
<%@ include file="includes/footer.jsp" %>