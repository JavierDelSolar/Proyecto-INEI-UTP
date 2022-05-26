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

@WebServlet("/libro")
public class LibroController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LibroController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LibroDAO libroDAO = new LibroDAO();
		String action = request.getParameter("accion")==null?"":request.getParameter("accion");
		switch(action.toLowerCase()){
			case "delete":
				int id = Integer.parseInt(request.getParameter("id"));
				boolean val = libroDAO.deleteLibro(id);
				String result = val?"OK":"Error";
				
				response.setContentType("text/plain");
				response.setCharacterEncoding("UTF-8");
				response.getWriter().write(result);
				break;				
		}
	}

}
