package ModelDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import Config.Conexion;
import Interface.AuthInterface;
import Model.Auth;
import Model.Cliente;

public class AuthDAO implements AuthInterface{
	private final String BD = " usuarios ";
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
		Cliente user = new Cliente();
		String query = "SELECT * "
				+ "FROM " + this.BD
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
			if(rs.getRow()==1) {
				return true;
			}else {
				return false;
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
	
	@Override
	public boolean add(Auth auth) {
		String query = "INSERT INTO" + this.BD + "(usuario, password) VALUES (?,?)";
		try {
			cn = conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(query);
			ps.setString(1, auth.getUsuario());
			ps.setString(2, auth.getPass());
			int row = ps.executeUpdate();
			if(row==1) {
				return true;
			}
		}catch (Exception e) {
			System.out.println("Error Auth: "+e);
		}
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
