<%@page import="model.dao.TintaDAO"%>
<%@page import="model.Tinta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link href="../styles/styles.css" rel="stylesheet" >
    </head>
    <body>
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

            if (tintaDAO.cadastrar(tinta) == true) {
        %>

        <div class="container p-3">
            <div class="container p-4 mt-5">
                <h3 class="mt-5 mb-4 container">
                    Item cadastrado com sucesso!
                    <h6 class="text-muted ms-3 mb-5" href='login.html'>Você será redirecionado</small>
                </h3>
                <img class="img-fluid" src="../imagem/mensagem/cadastro.svg" alt="não há itens"  width="300" 
                     height="450" /> 

            </div>
        </div>
<!--        <script>
            setTimeout(function () {
                window.location.replace("http://localhost:8080/WebClinica/index.jsp");
            }, 2500);
        </script>-->

        <%
        } else {
        %>
        <div class="alert alert-danger" role="alert">
            Falha ao cadastrar tinta.
        </div>
        <%
            }
        %>

    </body>
</html>
