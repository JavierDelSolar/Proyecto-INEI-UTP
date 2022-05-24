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
		String nombre = libro.getNombre()==null||libro.getNombre()==""?"":" AND nombre LIKE '%"+libro.getNombre()+"%'";
		String descripcion = libro.getDescripcion()==null||libro.getDescripcion()==""?"":" AND descripcion LIKE '%"+libro.getDescripcion()+"%'";
		String autor = libro.getAutor()==null||libro.getAutor()==""?"":" AND autor LIKE '%"+libro.getAutor()+"%'";
		String anio = libro.getFecha()==null||libro.getFecha()==""?"":" AND YEAR(fecha_creacion) = '"+libro.getFecha()+"'";
		
		String Where = nombre+descripcion+autor+anio;
		String query = "SELECT * "
				+ "FROM documento "
				+ "WHERE 1"+Where;
		try {
			cn = conexion.getConnection();
			st = cn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs = st.executeQuery(query);
			while(rs.next()){
				lista.add(new Libro(rs.getInt("id"), rs.getString("nombre"), rs.getString("descripcion"), rs.getString("autor"), rs.getString("fecha_creacion"), rs.getString("ruta_pdf"), rs.getString("ruta_imagen"), rs.getInt("id_categoria"), rs.getInt("tipo_documento")));
			}
			return lista;
		}catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	@Override
	public void SubirLibro(Libro libro) {
		String nombre = libro.getNombre()==null?"":libro.getNombre();
		String descripcion = libro.getDescripcion()==null?"":libro.getDescripcion();
		String autor = libro.getAutor()==null?"":libro.getAutor();
		String fecha = libro.getFecha()==null?"2022-05-01":libro.getFecha();
		String ruta_imagen = libro.getRuta_imagen()==null?"":libro.getRuta_imagen();
		String ruta_pdf = libro.getRuta_pdf()==null?"":libro.getRuta_pdf();
		
		String query = "INSERT INTO documento(nombre, descripcion, autor, fecha_creacion, ruta_pdf, ruta_imagen, id_categoria, tipo_documento) VALUES (?,?,?,?,?,?, '1', '1')";
		try {
			cn = conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(query);
			ps.setString(1, nombre);
			ps.setString(2, descripcion);
			ps.setString(3, autor);
			ps.setString(4, fecha);
			ps.setString(5, ruta_pdf);
			ps.setString(6, ruta_imagen);
			ps.execute();
		}catch (Exception e) {
			System.out.println(e);
		}
	}
	
}
