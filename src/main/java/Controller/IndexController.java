package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import Model.Libro;
import ModelDAO.LibroDAO;

/**
 * Servlet implementation class IndexController
 */
@WebServlet("/index")
public class IndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String INDEX = "/views/index/index.jsp";
       
    public IndexController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acceso = "";
		String action = request.getParameter("accion")==null?"index":request.getParameter("accion");
		switch(action.toLowerCase()) {
			case "index":
				acceso = INDEX;
				LibroDAO libroDAO = new LibroDAO();
				Libro libro1 = new Libro();
				libro1.setId_categoria(1);
				libro1.setTipo_documento(2);
				Libro libro2 = new Libro();
				libro2.setId_categoria(2);
				libro2.setTipo_documento(2);
				
				List<Libro> lista1 = libroDAO.listar(libro1);
				List<Libro> lista2 = libroDAO.listar(libro2);
				
				request.setAttribute("Lista1", lista1);
				request.setAttribute("Lista2", lista2);
				break;			
		}
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
