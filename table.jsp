<html>
<head>
 <title>jsp first example</title>
</head>
<body>
<%!
int no,tab,i;
%>
<form name='frm' action='' method='GET'>
<table border='5' align='center'>
 <tr><td>Enter Number</td><td><input type='text' name='first' value=''/></td></tr>
 <tr><td colspan='2' align='center'><input type='submit' name='s' value='Print Table'/></td></tr>
</table> 
</form>
<%
 String button=request.getParameter("s");
  if(button!=null)
  {
      no=Integer.parseInt(request.getParameter("first"));
     for(i=1;i<=10;i++)
     {
	 out.println(i*no+"<br>");
     }
  }

%>

</body>
</html>