package controller;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/elencofilm")
public class Film extends HttpServlet{
	ArrayList<String[]> film = new ArrayList<>();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hai chiamato il metodo get");
//		film.add(new String[]{"Bambi","Animazione"});
//		film.add(new String[]{"Big Hero 6","Animazione"});
//		film.add(new String[]{"Interstellar","Fantascienza"});
		request.setAttribute("elenco", film);
		
//		response.getWriter().print("come posso aiutarti?");
		request.getRequestDispatcher("lista.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("titolo")!=null) {
			String titolo = request.getParameter("titolo");
			String genere = request.getParameter("genere");
			film.add(new String[]{titolo,genere});
		}
		doGet(request, response);
	}

	
	
	
	
}
