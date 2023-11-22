<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.*" import="java.lang.*" %>
<%@page import="model.Usuario"%>
<%@page import="control.ControleUsuario"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet" >

    </head>
    <body>
        <%
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");

            ControleUsuario controleUsuario = new ControleUsuario();
            if (controleUsuario.logar(email, senha)) {

        %>
        <script>localStorage.setItem("logado", "true");</script>
        <script> window.location.href = '../index.jsp';</script>
        <%            } else {  %>
        <div class="container p-3">
            <div class="container p-4 mt-5">
                <h3 class="mt-5 mb-4 container">
                    Oops...
                    <small class="text-muted">Login negado</small>
                    <h6 class="text-muted ms-3 mb-5" href='login.html'>Clique aqui e tente novamente</small>
                </h3>
                <img class="img-fluid" src="../imagem/mensagem/access_denied.svg" alt="não há itens"  width="300" 
                     height="450" /> 

            </div>
        </div>
        <%   }
        %>
    </body>
    <script>
        
        function onRedirect () {
             window.location.href = "login.html";
        }
    </script>
</html>
