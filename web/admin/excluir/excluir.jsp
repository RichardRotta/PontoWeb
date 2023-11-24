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
            String id = request.getParameter("id");

            Tinta tinta = new Tinta();
            tinta.setId(id);

            TintaDAO tintaDAO = new TintaDAO();

            if (tintaDAO.deletar(tinta) == true) {
        %>

        <div class="container p-3">
            <div class="container p-4 mt-5">
                <h3 class="mt-5 mb-4 container">
                    Excluido com Sucesso!
                    <h6 class="text-muted ms-3 mb-5" href='login.html'>Você será redirecionado</small>
                </h3>
                <img class="img-fluid" src="../imagem/mensagem/excluir.svg" alt="não há itens"  width="300" 
                     height="450" /> 

            </div>
        </div>

<!--        <script>
            setTimeout(function () {
                window.location.replace("http://localhost:8080/PontoWeb/index.jsp");
            }, 2500);
        </script>-->
        <%
            } else {
                out.println("<br> <b>Tinta não excluída! <b>");
            }

        %>

    </body>
</html>
