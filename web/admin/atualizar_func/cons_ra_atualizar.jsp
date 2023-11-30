<%@page import="model.dao.FuncionarioDAO"%>
<%@page import="model.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../../assets/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link href="../../styles/styles.css" rel="stylesheet" >
    </head>
    <body class="body-container p-4">
        <%
            String ra = request.getParameter("ra");

            Funcionario funcionario = new Funcionario();
            funcionario.setRa(ra);

            FuncionarioDAO funcionarioDAO = new FuncionarioDAO();

            if (funcionarioDAO.consultarRaAtualizarFunc(funcionario) != null) {
        %>
        <div class="container p-5">
            <form class="form-container" name="frmAltFunc" method="post" action="atualizar.jsp">
                <h3 class="mt-5 mb-3">Atualização Funcionário</h3> 
                <label for="descricao">Nome:</label>
                <input type="text"  name="nome" class="form-control mb-3" id="nome"  value="<%= funcionario.getNome()%>">

                <label for="image">CPF:</label>
                <input type="text"  name="cpf" class="form-control mb-3" id="cpf" value="<%= funcionario.getCpf()%>">

                <label for="recomendacaoUso">RG:</label>
                <input type="text"  name="rg" class="form-control mb-3" id="rg"  value="<%= funcionario.getRg()%>">

                <label for="recomendacaoUso">Setor:</label>
                <input type="text"  name="setor" class="form-control mb-3" id="setor"  value="<%= funcionario.getSetor()%>">

                <label for="recomendacaoUso">Número de Telefone:</label>
                <input type="text"  name="numTelefone" class="form-control mb-3" id="numTelefone"  value="<%= funcionario.getNumTelefone()%>">

                <label for="recomendacaoUso">Data de Nascimento</label>
                <input type="text"  name="dataNascimento" class="form-control mb-3" id="dataNascimento"  value="<%= funcionario.getDataNascimento()%>">

                <label for="recomendacaoUso">Cargo</label>
                <input type="text"  name="cargo" class="form-control mb-3" id="cargo"  value="<%= funcionario.getCargo()%>">

                <label for="recomendacaoUso">Carga Horária</label>
                <input type="text"  name="cargaHora" class="form-control mb-3" id="cargaHora"  value="<%= funcionario.getCargaHora()%>">

                <label for="recomendacaoUso">Horas Extras</label>
                <input type="text"  name="horaExtra" class="form-control mb-3" id="horaExtra"  value="<%= funcionario.getHoraExtra()%>">

                <h3 class="mt-5 mb-3">Atualização Usuário</h3> 
                <label for="recomendacaoUso">RA</label>
                <input type="text"  name="ra" class="form-control mb-3" id="ra"  value="<%= funcionario.getRa()%>">

                <label for="recomendacaoUso">Senha</label>
                <input type="text"  name="senha" class="form-control mb-3" id="senha"  value="<%= funcionario.getSenha()%>">

                <label for="recomendacaoUso">Acesso</label>
                <input type="text"  name="acesso" class="form-control mb-3" id="acesso"  value="<%= funcionario.getAcesso()%>">

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
