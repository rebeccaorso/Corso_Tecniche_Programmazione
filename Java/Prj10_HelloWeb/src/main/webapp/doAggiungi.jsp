<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="model.ListaSpesa"%>
<%@page import="model.ToDo"%>
<%

//scriptlet
//pezzo di codice java nell'html


 //parameter = nome inserito in name qui <input type="text" name="todo" placeholder=">
	String richiesta = request.getParameter("todo");
	
	ToDo t = new ToDo(richiesta);
	t.setCompleto(true);
	ListaSpesa lista;
	
	if(session.getAttribute("miaLista")!=null){
		//la lista è già presente in sessione
		lista = (ListaSpesa) session.getAttribute("miaLista");
	}else{
		//è la prima volta
		 lista = new ListaSpesa();
	}
	
			lista.addToDo(t);
		
	
	
	

	
	session.setAttribute("miaLista", lista);
	
	response.sendRedirect("index.jsp");

// 	out.print(t);

%>