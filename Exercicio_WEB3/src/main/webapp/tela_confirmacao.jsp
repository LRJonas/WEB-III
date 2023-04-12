<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %><%--
  Created by IntelliJ IDEA.
  User: jonas
  Date: 10/04/2023
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String nome = (String) request.getAttribute("atributo_nome");
    String idioma = (String) request.getAttribute("atributo_idioma");
    LocalDate data_nascimento = (LocalDate) request.getAttribute("atributo_data");
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
    String dataFormata = data_nascimento.format(formatter);
    String[] habilidades = (String[]) request.getAttribute("atributo_habilidades");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>CADASTRO DO CARA LÁ: </h1>
    <ul>
        <li><% out.print(nome); %></li>
        <li><% out.print(data_nascimento); %></li>
        <li><% out.print(idioma); %></li>
        <ul>
            <% for (String habilidade: habilidades){ %>
                <li> <% out.print(habilidade); %></li>
            <% } %>
        </ul>
    </ul>
</body>
</html>
