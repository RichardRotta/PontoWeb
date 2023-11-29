<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.*" import="java.lang.*" %>
<%@page import="model.Usuario"%>
<%@page import="control.ControleUsuario"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet" >

    </head>
    <body>
        <%
            String ra = request.getParameter("ra");
            String senha = request.getParameter("senha");
            Usuario usuario = new Usuario();

            ControleUsuario controleUsuario = new ControleUsuario();
            if (controleUsuario.logar(ra, senha)) {
        %>
        <script>localStorage.setItem("logado", "true");</script>
        <script> window.location.href = 'usuarios/index.jsp';</script>
        <%
        } else {
        %>
        <div class="container p-3">
            <div class="container p-4 mt-5">
                <h3 class="mt-5 mb-4 container">
                    Oops...
                    <small class="text-muted">Login negado</small>
                </h3>
                <img class="img-fluid" src="../imagem/mensagem/access_denied.svg" alt="não há itens"  width="300" 
                     height="450" /> 
            </div>
        </div>

        <script>
            setTimeout(function () {
                window.location.replace("http://localhost:8080/PontoWeb");
            }, 2500);
        </script>
        <% }

        %>
    </body>
    <script>

        function onRedirect() {
            window.location.href = "login.html";
        }
    </script>
</html>
