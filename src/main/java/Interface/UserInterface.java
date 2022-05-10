package Interface;

import java.util.List;

import Model.User;

public interface UserInterface {
	public List listar();
	public User list(String usuario);
	public boolean add(User user);
	public boolean edit(User user);
	public boolean delete(String usuario);
}
