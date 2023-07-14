package repos;

import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connessione {

	private final String URL = "jdbc:mysql://localhost:3306/goal2023";
	private final String USER = "app_goal";
	private final String PASS = "java_2023!";

	private Connection conn = null;

	public Connection getConn() {
		if (conn == null)
			connetti();
		return conn;
	}

	private void connetti() {
		try {
			this.conn = DriverManager.getConnection(URL, USER, PASS);
			System.out.println("Siamo connessi");
		} catch (SQLException e) {
			System.err.println("Si e' verificato un errore: " + e.getMessage());
		}
	}

	public static void main(String[] args) {
		Connessione c = new Connessione();
		c.connetti();
	}
}