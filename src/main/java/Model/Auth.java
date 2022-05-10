package Model;

public class Auth {
	private String usuario;
	private String pass;
	
	public Auth() {
		
	}
	
	public Auth(String usuario, String pass) {
		super();
		this.usuario = usuario;
		this.pass = pass;
	}
	
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
}
