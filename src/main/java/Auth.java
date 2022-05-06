import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Auth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/promocion", "root", "");
			PreparedStatement ps = cn.prepareStatement("SELECT * FROM tblUsuarios WHERE usuario = ? AND password = ?");
			ps.setString(1, user);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				response.sendRedirect("Prueba1/views/libros/buscador.jsp");
				//RequestDispatcher rd;
				//rd = request.getRequestDispatcher(request.getRequestURI()+"/views/libros/buscador.jsp");
				//rd.forward(request, response);
			}else {
				// Alerta
			}
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
