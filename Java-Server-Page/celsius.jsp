//note : java server page contains both .jsp and .html file but i have attached both in single file named as celsius.jsp

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Convert Fahrenheit to Celsius JSP Program</title>
    </head>
    <body>
        <h2>Convert Fahrenheit to Celsius in JSP</h2>
        <form action="" method="post">            
            <label>Enter Fahrenheit: </label><input type="text" name="fahrenheit" />
	    <input type="submit" value="Submit">
        </form>
    </body>
</html>
 
<%
    //check if post request
    if("POST".equalsIgnoreCase(request.getMethod()))
    {
        //define variables
        float fahrenheit, celsius;
        //get the value from text box and convert into float
        fahrenheit = Float.parseFloat(request.getParameter("fahrenheit"));
        //apply the formula
        celsius = (fahrenheit - 32) * 5/9;
        //print the value
        out.print("<h3>Celsius: "+celsius+"</h3>");
    }
%>
