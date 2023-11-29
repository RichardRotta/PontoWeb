<%@page import="model.dao.UsuarioDao"%>
<%@page import="model.Usuario"%>
<%@page import="model.dao.UsuarioDao"%>
<%@page import="control.ControleUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bem Vindo</title>
    </head>
    <body>
        <h1>Você irá ser redirecionado para sua página em alguns segundos!</h1>
        <%
            String acessoPadrao = "padrao";
            ControleUsuario controleUsuario = new ControleUsuario();
            Usuario usuario = new Usuario();
            controleUsuario.verificar(acessoPadrao);
            if (usuario.getAcessoPadrao()== "padrao") {
            
        %>
        setTimeout(function () {
        window.location.replace("http://localhost:8080/admin/cadastro/index.jsp");
        }, 2500);
        <%            
            }else{
          
%>
deu errado
<%
}
        %>
       
    </body>
</html>
