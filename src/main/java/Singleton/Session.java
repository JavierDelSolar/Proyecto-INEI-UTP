package Singleton;

public class Session {
	private static Session instancia;
	private String usuario;
	private String tipo;
	private Boolean session;
	
	private Session(){}
	
	public static Session getInstancia() {
		if(instancia == null) instancia = new Session();
		return instancia;
	}
	
	public String getUsuario() {
		return usuario;
	}
	
	public String getTipo() {
		return tipo;
	}
	
	public void iniciarSesion(String usuario, String tipo) {
		this.usuario = usuario;
		this.tipo = tipo;
		this.session = true;
	}
	
	public void cerrarSesion() {
		this.usuario = "";
		this.tipo = "";
		this.session = false;
	}
}
