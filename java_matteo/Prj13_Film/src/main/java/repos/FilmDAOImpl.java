package repos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entities.Film;

public class FilmDAOImpl implements FilmDAO {

	private Connessione miaConn = new Connessione();

	private Statement stat = null;

	private PreparedStatement ps = null;

	private ResultSet rs = null;

	@Override
	public List<Film> getAll() {
		List<Film> lista = new ArrayList<>();
		try {
			this.stat = miaConn.getConn().createStatement();
			this.rs = this.stat.executeQuery(FIND_ALL);
			while (this.rs.next()) {
				Film f = new Film();
				f.setId(rs.getInt("id"));
				f.setTitolo(rs.getString("titolo"));
				f.setGenere(rs.getString("genere"));
				lista.add(f);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lista;
	}

	@Override
	public Film getById(int id) {
		Film f = null;
		try {
			this.ps = miaConn.getConn().prepareStatement(FIND_BY_ID);
			this.ps.setInt(1, id);
			this.rs = this.ps.executeQuery();

			while (this.rs.next()) {
				f = new Film();
				f.setId(rs.getInt("id"));
				f.setTitolo(rs.getString("titolo"));
				f.setGenere(rs.getString("genere"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public Film addFilm(Film f) {
		Film film = null;
		try {
			this.ps = miaConn.getConn().prepareStatement(ADD);
			this.ps.setString(1, f.getTitolo());
			this.ps.setString(2, f.getGenere());
			this.ps.execute();
		} catch (SQLException e) {
			System.err.println(e.getMessage());
		}
		return f;
	}

	@Override
	public Film updateFilm(Film f) {

		return null;
	}

	@Override
	public void deleteFilm(Film f) {

	}

	@Override
	public void deleteFilm(int id) {

	}

}