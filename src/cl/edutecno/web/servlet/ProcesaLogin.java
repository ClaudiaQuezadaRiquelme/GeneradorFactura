package cl.edutecno.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ProcesaLogin")
public class ProcesaLogin extends HttpServlet {
	private final String LOGIN = "admin";
	private final String PASS = "1234";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("nombreUsuario");
		String pass = request.getParameter("pass");
		
		if(!usuario.equals(LOGIN) || !pass.equals(PASS)) {
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Usuario o password incorrecto');");
			out.println("location='login.jsp';");
			out.println("</script>");
		} else { // Redireccionar a formulario
			HttpSession sesionUsuario = request.getSession();
			sesionUsuario.setAttribute("nombreUsuario", usuario);
			request.getRequestDispatcher("ingresoValores.jsp").forward(request, response);
		}
		
		
	}

}
