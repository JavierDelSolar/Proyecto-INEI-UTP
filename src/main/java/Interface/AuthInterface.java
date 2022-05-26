package Interface;

import java.util.List;

import Model.Auth;
import Model.Cliente;

public interface AuthInterface {
	public List listar();
	public Auth list(String usuario);
	public boolean validate(Auth auth);
	public boolean add(Auth auth);
	public boolean edit(Auth auth);
	public boolean delete(String usuario);
}
