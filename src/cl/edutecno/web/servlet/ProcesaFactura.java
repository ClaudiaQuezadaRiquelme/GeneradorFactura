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
    
    protected void calculatePrice () {
    	
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Form
		String nombre = request.getParameter("nombre");
		String empresa = request.getParameter("empresa");
		String rut = request.getParameter("rut");
		String direccion = request.getParameter("direccion");
		String ciudad = request.getParameter("ciudad");
		String pais = request.getParameter("pais");
		// Table
		String valvulaPrice = request.getParameter("valvula-price");
		String turboPrice = request.getParameter("turbo-price");
		String frenoPrice = request.getParameter("freno-price");
		String refriPrice = request.getParameter("refri-price");
		String plumillasPrice = request.getParameter("plumillas-price");
		String valvulaCount = request.getParameter("valvula-count");
		String turboCount = request.getParameter("turbo-count");
		String frenoCount = request.getParameter("freno-count");
		String refriCount = request.getParameter("refri-count");
		String plumillasCount = request.getParameter("plumillas-count");
		
		// Form
		request.setAttribute("nombre", nombre);
		request.setAttribute("empresa", empresa);
		request.setAttribute("rut", rut);
		request.setAttribute("direccion", direccion);
		request.setAttribute("ciudad", ciudad);
		request.setAttribute("pais", pais);
		// Table
		request.setAttribute("valvulaPrice", valvulaPrice);
		request.setAttribute("turboPrice", turboPrice);
		request.setAttribute("frenoPrice", frenoPrice);
		request.setAttribute("refriPrice", refriPrice);
		request.setAttribute("plumillasPrice", plumillasPrice);
		request.setAttribute("valvulaCount", valvulaCount);
		request.setAttribute("turboCount", turboCount);
		request.setAttribute("frenoCount", frenoCount);
		request.setAttribute("refriCount", refriCount);
		request.setAttribute("plumillasCount", plumillasCount);
		
		request.getServletContext().getRequestDispatcher("/generaFactura").forward(request, response);
	}

}
