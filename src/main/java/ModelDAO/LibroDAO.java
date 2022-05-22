package ModelDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import Config.Conexion;
import Interface.LibroInterface;
import Model.Libro;

public class LibroDAO implements LibroInterface{
	Conexion conexion = new Conexion();
	Connection cn;
	PreparedStatement ps;
	Statement st;
	ResultSet rs;
	
	@Override
	public List<Libro> listar(Libro libro) {
		List<Libro> lista = new ArrayList<Libro>();
		String query = "SELECT * "
				+ "FROM documento "
				+ "WHERE 1";
		try {
			cn = conexion.getConnection();
			st = cn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs = st.executeQuery(query);
			while(rs.next()){
				lista.add(new Libro(rs.getInt("id"), rs.getString("nombre"), rs.getString("descripcion"), rs.getString("autor"), null, rs.getString("ruta_pdf"), rs.getString("ruta_imagen"), rs.getInt("id_categoria"), rs.getInt("tipo_documento")));
			}
			return lista;
		}catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	@Override
	public void SubirLibro(Libro libro) {
		String query = "INSERT INTO documento(nombre, descripcion, autor, fecha_creacion, ruta_pdf, ruta_imagen, id_categoria, tipo_documento) VALUES ";
		query = query + "('"+libro.getNombre()+"', '"+libro.getDescripcion()+"', '"+libro.getAutor()+"', '"+libro.getFecha()+"', 'Ruta Imagen', 'Ruta PDF', '1', '1')";
		try {
			cn = conexion.getConnection();
			st = cn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs = st.executeQuery(query);
		}catch (Exception e) {
			System.out.println(e);
		}
	}
	
}
