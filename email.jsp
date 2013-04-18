<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
final String Username = "uidibm@gmail.com";
final String Password = "GIBMTGMC";

Properties props = new Properties();
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.port", "587");

Session session1 = Session.getInstance(props,
  new javax.mail.Authenticator() {
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(Username, Password);
	}
  });

try {
	String UserName = session.getAttribute("UserName").toString();
	System.out.println(UserName);
	String PassWord = session.getAttribute("PassWord").toString();
	System.out.println(UserName);
	String EMAIL = session.getAttribute("EMAIL").toString();	
	System.out.println(UserName+PassWord+EMAIL);
	Message message = new MimeMessage(session1);
	message.setFrom(new InternetAddress("uidibm@gmail.com"));
	message.setRecipients(Message.RecipientType.TO,
	InternetAddress.parse(EMAIL));
	message.setSubject("Confirmation Details");
	message.setText("Hello "+UserName+",\n Thankyou registering to the UID system . Here we sent the login details in the UID website"+
	"\nUsername:"+UserName+"\n Password:"+PassWord);

	Transport.send(message);
	System.out.println(UserName);
	System.out.println(PassWord);
	System.out.println(EMAIL);
	System.out.println("Done");

} catch (MessagingException e) {
	throw new RuntimeException(e);
}
%>