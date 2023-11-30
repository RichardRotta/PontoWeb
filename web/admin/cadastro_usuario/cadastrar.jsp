<%@page import="model.dao.FuncionarioDAO"%>
<%@page import="model.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Atualizar Funcionario</h1>

        <%
            request.setCharacterEncoding("UTF-8");
               
            
            String ra = request.getParameter("ra");
            String senha = request.getParameter("senha");
            String acesso = request.getParameter("acesso");

            Funcionario funcionario = new Funcionario();
            
            funcionario.setRa(ra);
            funcionario.setNome(senha);
            funcionario.setCpf(acesso);

            FuncionarioDAO funcionarioDAO = new FuncionarioDAO();

            if (funcionarioDAO.atualizarFuncionario(funcionario) == true) {
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
                out.println("<br> <b>Funcionario não alterada! <b>");
            }

        %>

    </body>
</html>
