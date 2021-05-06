import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class HelloWorldServlet extends HttpServlet{
 public void doGet(HttpServletRequest request, HttpServletResponse response)throws    IOException, ServletException
 {
   response.setContentType("text/html");
   PrintWriter out = response.getWriter();
   out.println("<html><head><title>HELLO WORLD SERVLET</title></head>");
   out.println("<body>");
   out.println("<h1>Hello World!!</h1>");
   out.println("</body></html>");
   out.close();
 }
}
