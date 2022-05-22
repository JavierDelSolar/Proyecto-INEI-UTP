package Interface;

import java.util.List;

import Model.Libro;

public interface LibroInterface {
	public List<Libro> listar(Libro libro);
	public void SubirLibro(Libro libro);
}
