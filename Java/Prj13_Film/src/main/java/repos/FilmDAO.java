package repos;

import java.util.List;

import entities.Film;

public interface FilmDAO {

	String ADD = "insert into film (titolo, genere) values (?,?) ";
	String FIND_ALL = "select * from film";
	String FIND_BY_ID = "select * from film where id = ?";
	String UPDATE = "update film set id = ?, titolo = ?, genere = ?";
	String DELETE = "delete from film where id = ?";

	List<Film> getAll();

	Film getById(int id);
	Film addFilm(Film f);
	Film updateFilm(Film f);
	void deleteFilm(Film f);
	void deleteFilm(int id);

}
