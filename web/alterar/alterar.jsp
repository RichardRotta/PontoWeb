<%@page import="model.dao.TintaDAO"%>
<%@page import="model.Tinta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Atualizar Tinta</h1>

        <%
            request.setCharacterEncoding("UTF-8");
               
            
            String nome = request.getParameter("nome");
            String descricao = request.getParameter("descricao");
            String image = request.getParameter("image");
            String recomendacaoUso = request.getParameter("recomendacaoUso");
            String coresSugeridas = request.getParameter("coresSugeridas");

            Tinta tinta = new Tinta();
            
            tinta.setNome(nome);
            tinta.setDescricao(descricao);
            tinta.setImage(image);
            tinta.setRecomendacaoUso(recomendacaoUso);
            tinta.setCoresSugeridas(coresSugeridas);

            TintaDAO tintaDAO = new TintaDAO();

            if (tintaDAO.atualizar(tinta) == true) {
        %>
        <h1>Cadastrado com Sucesso!</h1>
        <div class="">
            <img src="../imagem/mensagem/alterar.svg"/>
        </div>
        <script>
            setTimeout(function () {
                window.location.replace("http://localhost:8080/WebClinica/index.jsp");
            }, 2500);
        </script>

        <%
            } else {
                out.println("<br> <b>Tinta não alterada! <b>");
            }

        %>

    </body>
</html>
