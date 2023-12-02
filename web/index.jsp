
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.*" import="java.lang.*" %>
<%@page import="model.Usuario"%>
<%@page import="model.dao.UsuarioDao"%>
<%@page import="control.ControleUsuario"%>
<%@ page import="java.io.*, java.util.*" %>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet" >

    </head>
    <body>
        <%
            Usuario usuario = new Usuario();
            UsuarioDao usuarioDao = new UsuarioDao();
            ControleUsuario controleUsuario = new ControleUsuario();

            String ra = request.getParameter("ra");
            String senha = request.getParameter("senha");
            session.setAttribute("ra", ra);

            String acesso = controleUsuario.logar(ra, senha);
            usuario.setRa(ra);
            usuarioDao.consultarSetor(usuario);
            
            String setor = usuario.getSetor();
            session.setAttribute("setor", setor);
            
            if (acesso != null) {
                if (acesso.equals("admin")) {
        %>
        <script> localStorage.setItem("logado", "true");</script>
        <script> window.location.href = "admin/";</script>
        <%
        } else if (acesso.equals("diretor")) {
        %>
        <script> localStorage.setItem("logado", "true");</script>
        <script> window.location.href = "usuarios/diretor/";</script>
        <%
        } else if (acesso.equals("funcionario")) {
        %>
        <script> localStorage.setItem("logado", "true");</script>
        <script> window.location.href = "usuarios/funcionario/";</script>
        <%
        } else if (acesso.equals("rh")) {
        %>
        <script> localStorage.setItem("logado", "true");</script>
        <script> window.location.href = "usuarios/rh/";</script>
        <%
            }
        } else {
        %>
        <div class="container text-center p-3">
            <div class="container p-4 mt-5">
                <h3 class="mt-5 mb-4 container">
                    Oops...
                    <small class="text-muted">Login negado</small>
                </h3>
                <img class="img-fluid" src="imagem/mensagem/access_denied.svg" alt="negado"  width="300" 
                     height="450" /> 
            </div>
        </div>
        <%
            }
        %>
        
    </body>
    <script>
        setTimeout(function () {
            window.location.replace("http://localhost:8080/PontoWeb/");
        }, 2500);
//        function onRedirect() {
//            window.location.href = "index.html";
//        }
    </script>
</html>
