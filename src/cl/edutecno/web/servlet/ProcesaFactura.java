package cl.edutecno.web.servlet;

import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;

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
    
    protected String calculatePrice (int price, String amount) {
    	return Integer.toString(price * Integer.parseInt(amount) );
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
		int valvulaPrice = 120000;
		int turboPrice = 1700000;
		int frenoPrice = 760000;
		int refriPrice = 2300000;
		int plumillasPrice = 10000;
		String valvulaCount = request.getParameter("valvula-count");
		String turboCount = request.getParameter("turbo-count");
		String frenoCount = request.getParameter("freno-count");
		String refriCount = request.getParameter("refri-count");
		String plumillasCount = request.getParameter("plumillas-count");
		
		System.out.println(valvulaCount);
		System.out.println(turboCount);
		System.out.println(frenoCount);
		System.out.println(refriCount);
		System.out.println(plumillasCount);
		
		// Form
		request.setAttribute("nombre", nombre);
		request.setAttribute("empresa", empresa);
		request.setAttribute("rut", rut);
		request.setAttribute("direccion", direccion);
		request.setAttribute("ciudad", ciudad);
		request.setAttribute("pais", pais);

		// Table
		request.setAttribute("valvula-count", valvulaCount);
		request.setAttribute("turbo-count", turboCount);
		request.setAttribute("freno-count", frenoCount);
		request.setAttribute("refri-count", refriCount);
		request.setAttribute("plumillas-count", plumillasCount);

		request.setAttribute("valvula-price", Integer.toString(valvulaPrice));
		request.setAttribute("turbo-price", Integer.toString(turboPrice));
		request.setAttribute("freno-price", Integer.toString(frenoPrice));
		request.setAttribute("refri-price", Integer.toString(refriPrice));
		request.setAttribute("plumillas-price", Integer.toString(plumillasPrice));
		
		request.setAttribute("valvula-final-price", calculatePrice(valvulaPrice, valvulaCount) );
		request.setAttribute("turbo-final-price", calculatePrice(turboPrice, turboCount) );
		request.setAttribute("freno-final-price", calculatePrice(frenoPrice, frenoCount) );
		request.setAttribute("refri-final-price", calculatePrice(refriPrice, refriCount) );
		request.setAttribute("plumillas-final-price", calculatePrice(plumillasPrice, plumillasCount) );
		
		request.getServletContext().getRequestDispatcher("/generaFactura").forward(request, response);
	}

}
