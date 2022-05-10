package ModelDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Config.Conexion;
import Interface.UserInterface;
import Model.User;

public class UserDAO implements UserInterface{

	Conexion conexion = new Conexion();
	Connection cn;
	PreparedStatement ps;
	ResultSet rs;
	User user = new User();
	
	@Override
	public List listar() {
		ArrayList<User> list = new ArrayList<>();
		String query = "SELECT * FROM usuarios";
		try {
			cn = conexion.getConnection();
			ps = cn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				User user = new User();
				user.setUsuario(rs.getString("Id_user"));
				user.setPass(rs.getString("Contra"));
				list.add(user);
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	@Override
	public User list(String usuario) {
		return null;
	}

	@Override
	public boolean add(User user) {
		return false;
	}

	@Override
	public boolean edit(User user) {
		return false;
	}

	@Override
	public boolean delete(String usuario) {
		return false;
	}

	
}
