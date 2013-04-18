<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%
String states[] = { 
		"AndhraPradesh",
		"ArunachalPradesh",
		"Assam",
		"Bihar",
		"Chhattisgarh",
		"Goa",
		"Gujarat",
		"Haryana",
		"HimachalPradesh",
		"Jammuan&Kashmir",
		"Jharkhand",
		"Karnataka",
		"Kerala",
		"MadyaPradesh",
		"Maharashtra",
		"Manipur",
		"Meghalaya",
		"Mizoram",
		"Nagaland",
		"Orissa", 
		"Punjab",
		"Rajasthan",
		"Sikkim",
		"Tamil Nadu" ,
		"Tripura",
		"Uttaranchal",
		"UttarPradesh",
		"WestBengal"
		};
	String query = (String)request.getParameter("q");
	//System.out.println("1"+request.getParameterNames().nextElement());
	response.setHeader("Content-Type", "text/html");
	int cnt=1;
	for(int i=0;i<states.length;i++)
	{
		if(states[i].toUpperCase().startsWith(query.toUpperCase()))
		{
			out.print(states[i]+"\n");
			if(cnt>=10)
				break;
			cnt++;
		}
	}
%>