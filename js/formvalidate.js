

function validatefirstName(){
	var username = document.getElementById("firstname");
	console.log("Hello");
	if(username.value.length==0 )
		return "-> Name cannot be null \n";
	else
		return "";
}
function validatelastName(){
	var password = document.getElementById("lastname");
	if(password.value.length==0)
		return "->Last name cannot be null\n";
	else
		return "";
}
function validatestate(){
	var state = document.getElementById("state");
	if(state.value.length==0)
		return "->Not a valid state\n";
	else
		return "";
}
function validatedistrict(){
	var district = document.getElementById("district");
	if(district.value.length==0)
		return "->District cannot be null\n";
	else
		return "";
}
function validatemandal()
{
	var mandal = document.getElementById("mandal");
	if(mandal.value.length==0)
		return "->Mandal cannot be null\n";
	else
		return "";
}

function validatecity()
{
	var city = document.getElementById("city");
	if(city.value.length==0)
		return "->city cannot be null\n";
	else
		return "";
}

function validatedob()
{
	var dob = document.getElementById("dob");
	if(dob.value==0)
		return "->DOB should be specified\n";
	else
		return "";
}
function validateaddress()
{
	var address = document.getElementById("address");
	if(address.value==0)
		return "->Address should be specified\n";
	else
		return "";
}



function validatepincode()
{
	var pincode = document.getElementById("pincode");
	if(pincode.value.length==0)
		return "->Date of birth should be specified\n";
	else
		return "";
}


function validate(){
	var err="";
	err+=validatefirstName();
	console.log("xjfhjgxfd");
	err+=validatelastName();
	err+=validatestate();
	err+=validatedistrict();
	err+=validatemandal();
	err+=validatecity();
    err+=validatedob();
	err+=validateaddress();
	err+=validatepincode();
		
	if(err.length==0)
		return true;
	else{
		alert(err);
		return false;
	}
}