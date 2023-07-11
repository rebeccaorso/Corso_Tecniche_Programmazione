package controller;

import java.io.IOException;

import org.json.JSONArray;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import repos.FilmDAOImpl;

public class FilmRest extends HttpServlet{
	FilmDAOImpl dao = new FilmDAOImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json");
		JSONArray pippo = new JSONArray(dao.getAll());
		resp.getWriter().print(pippo.toString());
		
	}
	
	
	
	
	
	
	

}
