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
            request.setCharacterEncoding("UTF-8");

            String ra = request.getParameter("ra");
            String senha = request.getParameter("senha");
            String nome = request.getParameter("nome");
            String cpf = request.getParameter("cpf");
            String rg = request.getParameter("rg");
            String setor = request.getParameter("setor");
            String numTelefone = request.getParameter("numTelefone");
            String dataNascimento = request.getParameter("dataNascimento");
            String cargo = request.getParameter("cargo");
            String cargaHora = request.getParameter("cargaHora");
            String horaExtra = request.getParameter("horaExtra");
            String acesso = request.getParameter("acesso");

            Funcionario funcionario = new Funcionario();

            funcionario.setRa(ra);
            funcionario.setNome(nome);
            funcionario.setSenha(senha);
            funcionario.setCpf(cpf);
            funcionario.setRg(rg);
            funcionario.setSetor(setor);
            funcionario.setNumTelefone(numTelefone);
            funcionario.setDataNascimento(dataNascimento);
            funcionario.setCargo(cargo);
            funcionario.setCargaHora(cargaHora);
            funcionario.setHoraExtra(horaExtra);
            funcionario.setAcesso(acesso);

            FuncionarioDAO funcionarioDAO = new FuncionarioDAO();

            if (funcionarioDAO.cadastrarFuncionario(funcionario) == true) {
        %>
        <div class="container p-3">
            <div class="container p-4 mt-5">
                <h3 class="mt-5 mb-4 container">
                    Item cadastrado com sucesso!
                    <h6 class="text-muted ms-3 mb-5" href='login.html'>Você será redirecionado</small>
                </h3>
                <img class="img-fluid" src="../../imagem/mensagem/cadastro.svg" alt="não há itens"  width="300" 
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
        %>
        <div class="alert alert-danger" role="alert">
            Falha ao cadastrar funcionario.
        </div>
        <script>
            setTimeout(function () {
                window.location.replace("http://localhost:8080/PontoWeb/admin/cadastro_func");
            }, 2500);
        </script>
        <%
            }
        %>

    </body>
</html>
