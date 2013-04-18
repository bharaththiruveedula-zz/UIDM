<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Email Example</title>
<style type="text/css">
<!--
body {
	background-image: url();
}
.style2 {	font-size: 36px;
	color: #33FF66;
}
.style4 {color: #0000FF}
.style5 {
	font-size: medium;
	color: #009966;
}
.style6 {color: #FF0000}
-->
</style>

<script type="text/javascript" language="javascript">
function valid()
{
if(document.form1.to.value=="")
{
alert("Email  can't blank...");
document.form1.to.focus();
  document.form1.to.style.backgroundColor = "#FF9966";
	  document.form1.to.select();
return false;
}
if(document.form1.subject.value=="")
{
alert("Subject can't blank...");
document.form1.subject.focus();
  document.form1.subject.style.backgroundColor = "#FF9966";
	  document.form1.subject.select();
return false;
}
if(document.form1.body.value=="")
{
alert("Message can't blank...");
document.form1.body.focus();
  document.form1.body.style.backgroundColor = "#FF9966";
	  document.form1.body.select();
return false;
}
return true;
}
</script>
</head>

<body>
<table width="100%" height="100%" border="0" align="center">
  <tr>

    <th width="100%" scope="col"><table width="100%" height="100%"  border="0">
      <tr>
        <td height="107"><div align="center"><span class="style2"> <span class="style4"> Welcome to Email send example </span> </span></div></td>
        </tr>
      
    </table>    </th>
  </tr>
  <tr>
    <th scope="col">&nbsp;</th>
  </tr>
  <tr>
    <th scope="col">&nbsp;</th>
  </tr>
  <tr>
    <th scope="col"><table width="501" height="282" border="0" align="center">
      <form  name="form1" method="post" action="sendProcess.jsp" onsubmit="return valid()">
        <tr>
          <th colspan="3" scope="col"><label><span class="style5">If you have any suggestion, query, questions,or if you would like to   contact me for a quote, please use the form below and we will get back   to you as soon as possible.</span></label></th>
          </tr>
        <tr>
          <th width="79" scope="col"><div align="right">Email:<span class="style6">*</span></div></th>
          <th colspan="2" scope="col"><div align="left">
            <label>
            <input name="to" type="text" size="50%" />
            </label>
          </div></th>
        </tr>
        <tr>
          <th scope="row"><div align="right">Subject:<span class="style6">*</span></div></th>
          <td colspan="2"><label></label>
              <div align="left">
                <label>
                <input name="subject" type="text" size="50%" />
                </label>
            </div></td>
        </tr>
        <tr>
          <th height="127" scope="row"><div align="right">Message:<span class="style6">*</span></div></th>
          <td colspan="2"><div align="left">
              <textarea name="body" cols="50%" wrap="off" ></textarea>
          </div></td>
        </tr>
        <tr>
          <th scope="row">&nbsp;</th>
          <td width="107"><input type="submit" name="Submit" value="Submit" /></td>
          <td width="301"><input type="reset" name="Submit2" value="Reset" /></td>
        </tr>
      </form>
    </table></th>
  </tr>
  <tbody>
  </tbody>
  <tbody>
  </tbody>
</table>
</body>
</html>
