<%@page import="java.util.*"%>
<html>
<head><title>URL reweiting demo</title></head>
<body>
<%
	int last = 0;
	String param = request.getParameter("int");
	if(param!=null)
		last = Integer.parseInt(param);
		
	out.println(last);
%>
<br>
	<a href = "url.jsp?int=<%=last-1%>">prev</a>
	<a href = "url.jsp?int=<%=last+1%>">next</a>
</body>
</html>
