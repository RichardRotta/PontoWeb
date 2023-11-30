<%@page import="model.dao.TintaDAO"%>
<%@page import="model.Tinta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Atualizar Funcionário</h1>

        <%
            request.setCharacterEncoding("UTF-8");
               
            
            String ra = request.getParameter("ra");
            String senha = request.getParameter("senha");
            String acesso = request.getParameter("acesso");

            Tinta tinta = new Tinta();
            
            tinta.setRa(ra);
            tinta.setSenha(senha);
            tinta.setAcesso(acesso);

            TintaDAO tintaDAO = new TintaDAO();

            if (tintaDAO.atualizar(tinta) == true) {
        %>
        <h1>Cadastrado com Sucesso!</h1>
        <div class="">
            <img src="../imagem/mensagem/alterar.svg"/>
        </div>
        <script>
            setTimeout(function () {
                window.location.replace("http://localhost:8080/PontoWeb/admin");
            }, 2500);
        </script>

        <%
            } else {
                out.println("<br> <b>Tinta não alterada! <b>");
            }

        %>

    </body>
</html>
