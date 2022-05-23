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

@WebServlet("/buscador")
public class BuscadorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String URL = "/views/buscador/index.jsp";
       
    public BuscadorController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acceso = "";
		String action = request.getParameter("accion")==null?"index":request.getParameter("accion");
		switch(action.toLowerCase()) {
			case "index":
				request.setAttribute("Nivel", 1);
				acceso = URL;
				break;			
		}
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acceso = "";
		String action = request.getParameter("accion");
		switch(action.toLowerCase()) {
			case "buscar":
				acceso = URL;
				String nombre = request.getParameter("nombre");
				String descripcion = request.getParameter("descripcion");
				String autor = request.getParameter("autor");
				String anio = request.getParameter("anio");
				
				request.setAttribute("Nivel", 2);
				request.setAttribute("Nombre", nombre);
				request.setAttribute("Descripcion", descripcion);
				request.setAttribute("Autor", autor);
				request.setAttribute("Anio", anio);
				
				Libro libro = new Libro();
				libro.setNombre(nombre);
				libro.setDescripcion(descripcion);
				libro.setAutor(autor);
				libro.setFecha(anio);
				
				LibroDAO libroDAO = new LibroDAO();
				List<Libro> lista = libroDAO.listar(libro);
				request.setAttribute("Lista", lista);
				
				
				RequestDispatcher rd;
				rd = request.getRequestDispatcher(acceso);
				rd.forward(request, response);
				break;				
		}
	}

}
