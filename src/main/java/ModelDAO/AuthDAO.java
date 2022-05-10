package ModelDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import Config.Conexion;
import Interface.AuthInterface;
import Model.Auth;

public class AuthDAO implements AuthInterface{
	Conexion conexion = new Conexion();
	Connection cn;
	PreparedStatement ps;
	Statement st;
	ResultSet rs;
	Auth auth = new Auth();
	
	@Override
	public List listar() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Auth list(String usuario) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public boolean validate(Auth auth) {
		String query = "SELECT * "
				+ "FROM usuarios "
				+ "WHERE usuario = '" + auth.getUsuario() +"' AND password = '" + auth.getPass() + "'";
		try {
			//PreparedStatement ps = cn.prepareStatement("SELECT * FROM tblUsuarios WHERE Id_user = ? AND Contra = ?");
			//ps.setString(1, user);
			//ps.setString(2, pass);
			//ResultSet rs = ps.executeQuery();
			cn = conexion.getConnection();
			st = cn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs = st.executeQuery(query);
			rs.last();
			return rs.getRow()==1?true:false;
		}catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
	
	@Override
	public boolean add(Auth auth) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean edit(Auth auth) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean delete(String usuario) {
		// TODO Auto-generated method stub
		return false;
	}
	
	
}
