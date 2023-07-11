<%@page import="entities.Film"%>
<%@page import="java.util.ArrayList"%>
<%@ include file="header.jsp" %>
        
        <h1>Elenco Film</h1>
        <table class="table">
            <tr>
                <th>Titolo</th>
                <th>Genere</th>
            </tr>
            <% ArrayList<Film> elenco = (ArrayList<Film>)request.getAttribute("elenco"); %>
            <% for (Film f: elenco){ %>
            <tr>
                <td><%=f.getTitolo() %></td>
                <td><%=f.getGenere() %></td>
            </tr>
            <%} %>
        </table>
<%@ include file="footer.jsp" %>
