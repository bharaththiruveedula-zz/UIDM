<%@ include file="../includes/database.jsp" %>
<%@ include file="includes/header.jsp" %>
            <div align="center" class="navbar">
                <div align="center" class="navbar-inner" >
                    <div align="center" class="container" >
                        <ul class="nav" align="center">
                            <li><a href="final.jsp" id="home">Home</a></li>
                            <li><a href="#" id="step2">Generated UID</a></li>
                         	</ul>
                    </div>
                </div>
            </div>
            <%
            	String src = "../img/"+username+".jpg";
            	PreparedStatement ps = Conn.prepareStatement("SELECT UID,FIRSTNAME,LASTNAME,ADDRESS,FATHERNAME,DOB,state,pincode FROM CITIZEN1 WHERE USERNAME='"+username+"'");
            	ResultSet rs = ps.executeQuery();
            	rs.next();
                        String UID = rs.getString(1);
            	if(UID.equals(""))
            	{
            		%>
            			<h5>Sorry , your UID is not yet generated .Please submit your details in your nearest Regional centers</h5>
            		<%
            	}
            	else
            	{
            		
            		%>
            		<div id="UID">Your UID is :<%=UID %></div>
            		<div id="barcode"><img src="https://chart.googleapis.com/chart?chl=http://localhost:8080/UID/qrc/index.jsp?UID=<%=UID %>&chs=200x200&cht=qr&chld=H%7C0"></img></div>
            		<div id="card">
            			<h4>GOVERNMENT OF INDIA</h4>
            			<img src="../img/<%=username%>.jpg">
            			<div id ="name">Name:<%=rs.getString(2)+" "+rs.getString(3) %></div>
            			<div id ="fatherc">Father Name:<%=rs.getString(5) %></div>
            			<div id ="dobc">Date-of-Birth:<%=rs.getString(6) %></div>
            			<div id ="addressc">Address:<%=rs.getString(4) %></div>
            			<div id ="statec"><%= rs.getString(7)%></div>
            			<div id ="pincodec">Pincode:<%=rs.getString(8) %></div>
            			<div id ="uidc">UID:<%=UID %></div>
            			<div id="barcodec"><img src="https://chart.googleapis.com/chart?chl=http://localhost:8080/UID/qrc/index.jsp?UID=<%=UID %>&chs=100x100&cht=qr&chld=H%7C0"></img></div>
            		</div>
            		<%
            		
            	}
            	%>
<%@ include file="includes/footer.jsp" %>           
            	
            	