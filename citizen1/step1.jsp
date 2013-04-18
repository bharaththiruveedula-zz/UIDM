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
            <script>
	jQuery(function(){
		$("#states").autocomplete("list.jsp");
	});
</script>
<%
		String proof = request.getParameter("proofs");
		session.setAttribute("proof", proof);
		String query1 = "SELECT * from  citizen1 where username='"+username+"'";
		PreparedStatement Stmt1=Conn.prepareStatement(query1);
		ResultSet rs = Stmt1.executeQuery(); 
		rs.next();
		String firstname= rs.getString(3);
        if(firstname.equals("")) 
        {       	
%> 
	<div id="step1div">
	<table>
		<form class="well" action="step2.jsp" onSubmit="return validate()">
		<tr>
			<td>First Name:</td>
			<td><input type="text" id="firstname" name="firstname"></td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><input type="text" id="lastname" name="lastname"></td>
		</tr>
		<tr>
			<td>Father Name:</td>
			<td><input type="text" id="fathername" name="fathername"></td>
		</tr>
		<tr>
			<td>Gender:</td>
			<td><select name="gender">
				<option value="male">Male</option>
				<option value="female">Female</option>
			</select></td>
		</tr>
		<tr>
			<td>Date of Birth:</td>
			<td><input type="text" id="dob" name="dob"></td>
		</tr>
		<tr>
			<td>State:</td>
			<td><input type="text" id="states" name="states"></td>
		</tr>
		<tr>
			<td>District:</td>
			<td><input type="text" id="district" name="district"></td>
		</tr>
		<tr>
			<td>Mandal:</td>
			<td><input type="text" id="mandal" name="mandal"></td>
		</tr>
		<tr>
			<td>City/Town/Village:</td>
			<td><input type="text" id="city" name="city"></td>
		</tr>
		<tr>
			<td>Address Details:</td>
			<td><input type="text" id="address" name="address"></td>
		</tr>
		<tr>
			<td>Postal Address:</td>
			<td><input type="text" id="pincode" name="pincode"></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Submit" id="submit" class="btn btn-primary" style="width:100px;height: 30px;"></td>
		</tr>
		</form>
	</table>
	</div>
<%
	}
    else
    {
    	%>
    		<table>
		<tr>
			<td>First Name:</td>
			<td><%= rs.getString(3)%></td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><%= rs.getString(5) %></td>
		</tr>
		<tr>
			<td>Date of Birth:</td>
			<td><%=rs.getString(3) %></td>
		</tr>
		<tr>
			<td>State:</td>
			<td><%= rs.getString(6)  %></td>
		</tr>
		<tr>
			<td>District:</td>
			<td><%= rs.getString(7)  %></td>
		</tr>
		<tr>
			<td>Mandal:</td>
			<td><%= rs.getString(8)  %></td>
		</tr>
		<tr>
			<td>City/Town/Village:</td>
			<td><%= rs.getString(9)  %></td>
		</tr>
		<tr>
			<td>Address Details:</td>
			<td><%= rs.getString(14)  %></td>
		</tr>
		<tr>
			<td>Postal Address:</td>
			<td><%= rs.getString(5)  %></td>
		</tr>
</table>
    	<%
    }
%>
<%@ include file="includes/footer.jsp" %>
