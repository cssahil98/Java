<%
int a = Integer.parseInt(request.getParameter("a"));
int b = Integer.parseInt(request.getParameter("b"));
int c=a+b;
out.print("<h2 align = \"center\">" + "Addition of "+a+" and "+b+" is "+c+"</h2>");
%>
