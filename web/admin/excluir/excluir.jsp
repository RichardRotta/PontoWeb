<%@page import="model.dao.FuncionarioDAO"%>
<%@page import="model.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../assets/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link href="../../styles/styles.css" rel="stylesheet" >
    </head>
    <body>

        <%
            String ra = request.getParameter("ra");

            Funcionario funcionario = new Funcionario();
            funcionario.setRa(ra);

            FuncionarioDAO funcionarioDAO = new FuncionarioDAO();

            if (funcionarioDAO.excluir(funcionario) == true) {
        %>

        <div class="container p-3">
            <div class="container p-4 mt-5">
                <h3 class="mt-5 mb-4 container">
                    Excluido com Sucesso!
                    <h6 class="text-muted ms-3 mb-5" href='login.html'>Você será redirecionado</small>
                </h3>
                <img class="img-fluid" src="../../imagem/mensagem/excluir.svg" alt="não há itens"  width="300" 
                     height="450" /> 
            </div>
        </div>
        <script>
            setTimeout(function () {
                window.location.replace("http://localhost:8080/PontoWeb/admin");
            }, 2500);
        </script>
        <%
            } else {
                out.println("<br> <b>Funcionario não excluída! <b>");
            }

        %>

    </body>
</html>
