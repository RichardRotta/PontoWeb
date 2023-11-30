<%@page import="model.dao.FuncionarioDAO"%>
<%@page import="model.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <%
            String ra = request.getParameter("ra");

            Funcionario funcionario = new Funcionario();
            funcionario.setRa(ra);

            FuncionarioDAO funcionarioDAO = new FuncionarioDAO();

            if (funcionarioDAO.consultarRa(funcionario) != null) {
        %>
        <div class="single-item-container p-5">
            <h3 class="mb-4">Login: Cadastro</h3> 

                <form class="" name="frmAltFunc" method="post" action="cadastrar.jsp">
                    <label for="nome">RA:</label>
                    <input type="text"  name="ra" class="form-control mb-3" id="ra" value="<%= funcionario.getRa()%>">

                    <label for="descricao">Senha:</label>
                    <input type="text"  name="senha" class="form-control mb-3" id="senha"  value="<%= funcionario.getSenha()%>">

                    <label for="image">Acesso:</label>
                    <input type="text"  name="acesso" class="form-control mb-3" id="acesso" value="<%= funcionario.getAcesso()%>">

                    <div class="d-flex  justify-content-center">
                        <button type="reset" class="btn btn-primary ">Limpar</button>
                        <button type="submit" class="btn btn-success ms-3">Alterar</button>
                    </div>
                </form>

        </div>

        <%
            } else {
                out.println("<br> <b>Funcionario não encontrada! <b>");
            }

        %>

    </body>
</html>
