<html>
<head>
  <title>addition example</title>
</head>
<body>
<%!
 int a,b,c;//declaration
%>
<form name='frm' action='' method='GET'>
<table border='5' align='center'>
 <tr><td>First Value</td><td><input type='text' name='first' value=''/></td></tr>
 <tr><td>Second Value</td><td><input type='text' name='second' value=''/></td></tr>
 <tr><td colspan='2' align='center'>
  <input type='submit' name='s' value='Calculate Addition'/></td></tr>

</table>
</form>
<%
String button=request.getParameter("s");
 if(button!=null)
 {
String f=request.getParameter("first");
String s=request.getParameter("second");
  a=Integer.parseInt(f);
  b=Integer.parseInt(s);
  c=a+b;
  
 }
%>
<h1>Addition is &nbsp;<%=c%>

</body>
</html>