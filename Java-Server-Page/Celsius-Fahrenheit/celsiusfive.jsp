<%@ page session="false" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Convert Celsius to Fahrenheit JSP Program </title>
    </head>
<body>
        <h2><center>Celsius to Fahrenheit</center></h2>

<table border="0" align="center" width="50%">
<tr>
   <th align="right">Celsius</th>
   <th align="right">Fahrenheit</th>
</tr>
<%
   for (int c = 0; c <= 50; c += 10) {
      int f = 32 + 9*c/5;
      out.print("<tr>");
      out.print("<td align=\"right\">" + c + "</td>");
      out.print("<td align=\"right\">" + f + "</td>");
      out.print("</tr>");
   }
%>
</table>
</body>
</html>


