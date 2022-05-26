package ModelDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Config.Conexion;
import Interface.ClienteInterface;
import Model.Cliente;

public class ClienteDAO implements ClienteInterface{
	private final String BD = "clientes";
	Conexion conexion = new Conexion();
	Connection cn;
	PreparedStatement ps;
	ResultSet rs;
	Cliente user = new Cliente();
	
	@Override
	public boolean add(Cliente cliente) {
		String query = "INSERT INTO " + this.BD + "(nombre, correo, usuario) VALUES (?,?,?)";
		try {
			cn = conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(query);
			ps.setString(1, cliente.getNombre());
			ps.setString(2, cliente.getCorreo());
			ps.setString(3, cliente.getUsuario());
			int row = ps.executeUpdate();
			if(row==1) {
				return true;
			}
		}catch (Exception e) {
			System.out.println("Error Cliente: "+e);
		}
		return false;
	}

	@Override
	public boolean edit(Cliente cliente) {
		return false;
	}

	
}
