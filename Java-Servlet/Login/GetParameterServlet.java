import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class GetParameterServlet extends HttpServlet{
 public void doPost(HttpServletRequest request, HttpServletResponse response)
 throws IOException, ServletException{
 response.setContentType("text/html");
 PrintWriter out = response.getWriter();
 out.println("<html><head><title>GET PARAMETER SERVLET</title></head>");
 out.println("<body>");
 String login = request.getParameter("login");
 String password = request.getParameter("password");
 out.println("<h2>login:" + login + "<br/>password:" + password + "</h2>");
 out.println("</body></html>");
 }
}
