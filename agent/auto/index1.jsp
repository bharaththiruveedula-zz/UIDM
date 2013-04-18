<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>

<%/*@ include file="../includes/database.jsp"*/%>

<head>

	<script type="text/javascript" src="../js/formvalidate.js"></script>
	<script type="text/javascript" src="script.js"></script>
	<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../js/jquery-ui-1.8.20.custom.min.js"></script>
<script type="text/javascript" src="../js/jquery.autocomplete.js"></script>	
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>
	<script src="JS/jquery.autocomplete.js"></script>	
</head>


<body>
<table>
	<form class="well" action="step2.jsp" onSubmit="return validate()">
	<tr>
		<td>First Name:</td>
		<td><input type="text" id="firstname" name="firstname" ></td>
	</tr>
	<tr>
		<td>Last Name:</td>
		<td><input type="text" id="lastname" name="lastname"></td>
	</tr>
	<tr>
		<td>Date of Birth:</td>
		<td><input type="text" id="dob" name="dob"></td>
	</tr>

	<tr>
		<td>State:</td>
		<td><input type="text" id="state" name="state"></td>
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
		<td>Verify</td>
		<td><input type="submit" id="submit"></td>
	</tr>
	
           
	</form>

</table>




		<b>Country</b>   : <input type="text" id="states" name="states" class="input_text"/>
	
	

<script>
	jQuery(function(){
		$("#state").autocomplete("list.jsp");
	});
</script>
</html>