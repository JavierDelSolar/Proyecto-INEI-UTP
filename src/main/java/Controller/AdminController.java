package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;

import Model.Libro;
import ModelDAO.LibroDAO;

@WebServlet("/admin")
@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB 
maxFileSize=1024*1024*50,      	// 50 MB
maxRequestSize=1024*1024*100)   	// 100 MB
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String ADMIN = "/views/admin/libros.jsp";
       
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acceso = "";
		String action = request.getParameter("accion")==null?"libros":request.getParameter("accion");
		switch(action.toLowerCase()) {
			case "libros":
				acceso = ADMIN;
				break;					
		}
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acceso = "";
		String action = request.getParameter("accion")==""?"Solo":request.getParameter("accion");
		LibroDAO libroDAO = new LibroDAO();
		switch(action.toLowerCase()) {
			case "solo":
				Part imagen1 = request.getPart("imagen");
				Part pdf1 = request.getPart("pdf");
				String imagenName1 = imagen1.getSubmittedFileName();
				String pdfName1 = pdf1.getSubmittedFileName();
				Libro l1 = new Libro();
				l1.setRuta_imagen(imagenName1);
				l1.setRuta_pdf(pdfName1);
				
				libroDAO.SubirLibro(l1);
				
				System.out.print("Listo");
				
				RequestDispatcher rd1;
				rd1 = request.getRequestDispatcher(ADMIN);
				rd1.forward(request, response);
				break;
			case "subir":
				acceso = ADMIN;
				String nombre = request.getParameter("nombre");
				String descripcion = request.getParameter("descripcion");
				String autor = request.getParameter("autor");
				String fecha = request.getParameter("fecha");
				Part imagen = request.getPart("imagen");
				Part pdf = request.getPart("pdf");
				String imagenName = imagen.getSubmittedFileName();
				String pdfName = pdf.getSubmittedFileName();
				
				pdf.write("E:\\Workspace\\JavaWeb\\Proyecto1\\src\\main\\webapp\\resources\\Files\\" + pdfName);
				imagen.write("E:\\Workspace\\JavaWeb\\Proyecto1\\src\\main\\webapp\\resources\\Files\\" + imagenName);
				
				Libro libro = new Libro();
				libro.setNombre(nombre);
				libro.setDescripcion(descripcion);
				libro.setAutor(autor);
				libro.setFecha(fecha);
				libro.setRuta_imagen(imagenName);
				libro.setRuta_pdf(pdfName);
				libroDAO.SubirLibro(libro);
							
				RequestDispatcher rd;
				rd = request.getRequestDispatcher(ADMIN);
				rd.forward(request, response);
				break;				
		}
		
		/*
		 *response.sendRedirect(request.getContextPath()+"/admin");
		 * */
	}

}
