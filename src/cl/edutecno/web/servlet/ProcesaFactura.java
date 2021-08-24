package cl.edutecno.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProcesaFactura
 */
@WebServlet("/procesaFactura")
public class ProcesaFactura extends HttpServlet {
	
    public ProcesaFactura() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		String empresa = request.getParameter("empresa");
		String rut = request.getParameter("rut");
		String direccion = request.getParameter("direccion");
		String ciudad = request.getParameter("ciudad");
		String pais = request.getParameter("pais");
		
		request.setAttribute("nombre", nombre);
		request.setAttribute("empresa", empresa);
		request.setAttribute("rut", rut);
		request.setAttribute("direccion", direccion);
		request.setAttribute("ciudad", ciudad);
		request.setAttribute("pais", pais);
		
		request.getServletContext().getRequestDispatcher("/generaFactura").forward(request, response);
	}

}
