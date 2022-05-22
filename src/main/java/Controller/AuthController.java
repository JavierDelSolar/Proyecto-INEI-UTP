package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import Model.Auth;
import Model.User;
import ModelDAO.AuthDAO;

/**
 * Servlet implementation class AuthController
 */
@WebServlet("/auth")
public class AuthController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String LOGIN = "/views/auth/login.jsp";
	String LOGUP = "/views/auth/logup.jsp";
	String URL_HOME = "/index";
       
    public AuthController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Validar si ya se logeo el usuario
		HttpSession sesion = request.getSession(true);
		String usuario = (String)(sesion.getAttribute("Usuario"));
		if(usuario == null){
			String acceso = "";
			String action = request.getParameter("accion")==null?"login":request.getParameter("accion");
			switch(action.toLowerCase()) {
				case "login":
					acceso = LOGIN;
					break;
				case "logup":
					acceso = LOGUP;
					break;					
			}
			RequestDispatcher vista = request.getRequestDispatcher(acceso);
			vista.forward(request, response);
		}else {
			response.sendRedirect(request.getContextPath()+URL_HOME);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acceso = "";
		String action = request.getParameter("accion");
		AuthDAO authDAO = new AuthDAO();
		switch(action.toLowerCase()) {
			case "login":
				acceso = LOGIN;
				String user = request.getParameter("user");
				String pass = request.getParameter("pass");
				Auth auth = new Auth(user, pass);
				boolean validacion = authDAO.validate(auth);
				if(validacion) {
					HttpSession session = request.getSession(true);
					session.setAttribute("Usuario", user);
					//getServletContext().setAttribute("Usuario", user);
					request.getSession().setAttribute("Usuario", user);
					//request.getSession().setAttribute("Tipo", usuario.getTipo());
					Singleton.Session s = Singleton.Session.getInstancia();
					s.iniciarSesion(user, pass);
					response.sendRedirect(request.getContextPath()+URL_HOME);
				}else {
					request.setAttribute("Validador", false);
					RequestDispatcher rd;
					rd = request.getRequestDispatcher(acceso);
					rd.forward(request, response);
				}
				break;
			case "logup":
				acceso = LOGUP;
				break;					
		}
	}

}
