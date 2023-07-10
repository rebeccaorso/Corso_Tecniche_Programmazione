<%@page import="java.util.ArrayList"%>
<%@ include file="header.jsp" %>
        
        <h1>Elenco Film</h1>
        <table class="table">
            <tr>
                <th>Titolo</th>
                <th>Genere</th>
            </tr>
            <% ArrayList<String[]> elenco = (ArrayList<String[]>)request.getAttribute("elenco"); %>
            <% for (String[]valori: elenco){ %>
            <tr>
                <td><%= valori[0] %></td>
                <td><%= valori[1] %></td>
            </tr>
            <%} %>
        </table>
<%@ include file="footer.jsp" %>
