<%@ include file="includes/database.jsp" %>
<%@ page import="org.json.*, java.util.*, java.io.*" %>


<%

String getuser = request.getParameter("Username");
String getpass = request.getParameter("Password");
System.out.println(getuser);
try{

 // Directly moving to executing a sample query not including the //connection statements here
String query = "select * from citizen1 where username='"+getuser+"' and password='"+getpass+"' ";
PreparedStatement statement =Conn.prepareStatement(query);
				
ResultSet rs = statement.executeQuery();
 


if(rs.next())
{
// here is where the json object is populated as follows,
JSONObject myObj = new JSONObject();
myObj.put("img",rs.getString(1));
myObj.put("firstname", rs.getString(3));      
myObj.put("lastname", rs.getString(5));         
myObj.put("state", rs.getString(6));         
myObj.put("district", rs.getString(7));
myObj.put("mandal", rs.getString(8));         
myObj.put("village", rs.getString(9));         
myObj.put("address", rs.getString(14));         
myObj.put("pincode", rs.getString(17));         
myObj.put("uid", rs.getString(15));     
myObj.put("dob", rs.getString(16));     
myObj.put("fathername", rs.getString(20));         
 

 
/* myObj.put("firstname", getuser);      
myObj.put("lastname", "gfghfghfh");         
myObj.put("state", "jhghjgdshgjhdgfh");         
myObj.put("district", "gsdjgsjfd");
myObj.put("mandal", "jkhdkjfhbsd");         
myObj.put("village", "dsgshdgh");         
myObj.put("address", "jhdskjhs");         
myObj.put("pincode", "vcjhdjvjnvcdx");         
myObj.put("uid", "mbhjgjh");     
myObj.put("dob", "hkjhsdfkhskh");     
myObj.put("fathername", "dhjsdkhkj");         
 */
System.out.println("success");

 
// Get the print writer object and send the above response object //to the Client.
            PrintWriter writer = response.getWriter();
            writer.write(myObj.toString());
            writer.flush();
}
else
{
	JSONObject myObj = new JSONObject();

	 myObj.put("firstname","");
     PrintWriter writer = response.getWriter();
     writer.write(myObj.toString());
     writer.flush();
}


}catch(Exception e){
e.printStackTrace();
}


%>