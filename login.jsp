<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name='frm' action='' method='POST'>
<center>
<input type='text' name='name' value='' placeholder='Enter the Username' style='width:400px;height:30px;'/><br><br>
<input type='password' name='pass' value='' placeholder='Enter the Password' style='width:400px;height:30px;'/><br><br>
<input type='submit' name='s' value='Login' style='width:400px;height:30px;'/><br><br>

</center>
</form>
<%
 String btn=request.getParameter("s");
  if(btn!=null)
  {
	  String username=request.getParameter("name");
	  String password=request.getParameter("pass");
	  if(username.equals("admin")&&password.equals("admin"))
	  {
		  response.sendRedirect("master.jsp");
	  }
	  else
	  {
%>
 <center>invalid username and password</centeR>
<% 
	  }
  }
%>
</body>
</html>