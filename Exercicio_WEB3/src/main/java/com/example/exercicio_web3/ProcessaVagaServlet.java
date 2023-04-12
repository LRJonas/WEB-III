package com.example.exercicio_web3;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet("/processa_vaga")
public class ProcessaVagaServlet extends HttpServlet {

    private DateTimeFormatter formatter;

    @Override
    public void init() throws ServletException {
        formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //obtendo as informações do formulário
        String nome = req.getParameter("nome");


        String stringDate = req.getParameter("data_nascimento");
        LocalDate data = LocalDate.parse(stringDate, formatter);

        String idioma = req.getParameter("idioma");

        String [] habilidades = req.getParameterValues("habilidades");

        //adicionando estas informações á requisição
        req.setAttribute("atributo_nome", nome);
        req.setAttribute("atributo_data", data);
        req.setAttribute("atributo_idioma", idioma);
        req.setAttribute("atributo_habilidades", habilidades);

        //encaminhando as informações para um página JSP
        if(nome.equals("")){
            resp.sendRedirect("http://localhost:8080/Exercicio_WEB3_war_exploded/");
        }else{
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("tela_confirmacao.jsp");
            requestDispatcher.forward(req, resp);
        }


    }
}
