<%@page import="model.dao.FuncionarioDAO"%>
<%@page import="model.Funcionario"%>
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
            funcionario.setSenha(senha);
            funcionario.setNome(nome);
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

            if (funcionarioDAO.atualizarFuncionario(funcionario) == true) {
        %>
        <h1>Cadastrado com Sucesso!</h1>
        <div class="">
            <img src="../../imagem/mensagem/alterar.svg"/>
        </div>
        <script>
            setTimeout(function () {
                window.location.replace("http://localhost:8080/PontoWeb/admin");
            }, 2500);
        </script>

        <%
            } else {
                out.println("<br> <b>Funcionario não alterado! <b>");
        %>
        <script>
            setTimeout(function () {
                window.location.replace("http://localhost:8080/PontoWeb/admin/atualizar_funcionario");
            }, 2500);
        </script>
        <%
            }

        %>

    </body>
</html>
