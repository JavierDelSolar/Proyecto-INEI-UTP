package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

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
				break;			
		}
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
