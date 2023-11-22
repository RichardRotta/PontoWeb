
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.dao.TintaDAO"%>
<%@page import="model.Tinta"%>
<%@page import="java.sql.*"%>
<%@page import="java.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    </head>
    <body>
        <nav id="navbarLogado" class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Magic Color Catalog</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a href="javascript:void(0);" onclick="loadPage('cadastro/index.jsp')" class="nav-link">
                                Cadastrar
                            </a>  

                        </li>
                        <li class="nav-item">
                            <a href="javascript:void(0);" onclick="loadPage('consultar_id/index.jsp')" class="nav-link">

                                Consultar por ID
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="javascript:void(0);" onclick="loadPage('alterar/index.jsp')" class="nav-link">

                                Alterar
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="javascript:void(0);" onclick="loadPage('excluir/index.jsp')" class="nav-link">

                                Excluir
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="javascript:void(0);" onclick="logout()" class="nav-link">

                                Logout
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

        <nav id="navbarNaoLogado" class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container">
                <a class="navbar-brand" href="index.jsp" aria-current="page">Magic Color Catalog</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a href="login/login.html"  class="nav-link" aria-current="page">
                                Login
                            </a>  

                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div id="catalog" class="container">
            <div class="row  text-center">
                <%
                    TintaDAO tintaDAO = new TintaDAO();
                    List<Tinta> lista = tintaDAO.buscarTodos();

                    if (lista == null) {
                %>
                <div class="container p-4 mt-5">
                    <h3 class="mt-5 mb-4">
                        Oops...
                        <small class="text-muted">Não há itens</small>
                    </h3>
                    <img class="img-fluid" src="imagem/mensagem/erroConsulta.svg" alt="não há itens"  width="300" 
                         height="450" /> 

                </div>

                <%
                } else {
                    for (int i = 0; i < lista.size(); i++) {
                        Tinta tinta = lista.get(i);

                %>

                <div class="col-12 col-md-6 col-lg-4 mb-4 p-3">
                    <div class="item-box catalog-item-container">
                        <img src=<%= tinta.getImage()%> alt="Imagem">
                        <p id="cardId"><b>ID: </b><%= tinta.getId()%></p>   
                        <p><b>Nome: </b><%= tinta.getNome()%></p>   
                        <p><b>Descrição: </b><%= tinta.getDescricao()%></p>
                        <p><b>Ambientes: </b><%= tinta.getRecomendacaoUso()%></p>
                        <p><b>Combina com: </b><%= tinta.getCoresSugeridas()%></p>
                    </div>
                </div>
                <%
                        }
                    }
                %>
            </div>
        </div>

        <div id="content"></div>
    </div>

    <script>
        const logado = localStorage.getItem("logado");
        const navbarLogado = document.getElementById("navbarLogado");
        const navbarNaoLogado = document.getElementById("navbarNaoLogado");
        const mostrarId = document.getElementById("cardId");

        if (logado === "true") {
            navbarLogado.style.display = "block";
            navbarNaoLogado.style.display = "none";
            mostrarId.style.display = "block";

        } else {
            navbarLogado.style.display = "none";
            navbarNaoLogado.style.display = "block";
            mostrarId.style.display = "none";
        }

        function loadPage(pageName)
        {
            const catalog = document.getElementById("catalog");
            catalog.style.display = "none";
            const content = document.getElementById("content");
            content.innerHTML = "";
            fetch(pageName).then(response => response.text()).then(data => {
                content.innerHTML = data;
            });
        }


        function logout()
        {
            localStorage.setItem("logado", "false");
            location.reload();
        }


    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
