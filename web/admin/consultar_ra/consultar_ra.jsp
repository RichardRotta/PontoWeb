<%@page import="model.dao.FuncionarioDAO"%>
<%@page import="model.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet" >
        <link href="../../assets/dist/css/bootstrap.min.css" rel="stylesheet" >

    </head>
    <body>
        <div class="container">

            <h1 class="sigle-item-title">Consulta de Funcionario</h1>

            <%
                String ra = request.getParameter("ra");

                Funcionario funcionario = new Funcionario();
                funcionario.setRa(ra);

                FuncionarioDAO funcionarioDAO = new FuncionarioDAO();

                if (funcionarioDAO.consultarRa(funcionario) != null) {
            %>
            <div class="single-item-container">
                <div class="p-3">
                    <p><b>RA:</b> <%= funcionario.getRa()%></p>
                    <p><b>Nome:</b> <%= funcionario.getNome()%></p>
                    <p><b>CPF:</b> <%= funcionario.getCpf()%></p>
                    <p><b>RG:</b> <%= funcionario.getRg()%></p>
                    <p><b>Setor:</b> <%= funcionario.getSetor()%></p>
                    <p><b>Número de Telefone:</b> <%= funcionario.getNumTelefone()%></p>
                    <p><b>Data de Nascimento:</b> <%= funcionario.getDataNascimento()%></p>
                    <p><b>Cargo:</b> <%= funcionario.getCargo()%></p>
                    <p><b>Carga Horária:</b> <%= funcionario.getCargaHora()%></p>
                    <p><b>Horas Extras:</b>: <%= funcionario.getHoraExtra()%></p>
                    <p><b>Acesso:</b> <%= funcionario.getAcesso()%></p>
                </div>
            </div>
            <%
            } else {
            %>

            <div class="alert alert-danger" role="alert">
                Item não encontrado.
            </div>
            <script>
                setTimeout(function () {
                    window.location.replace("http://localhost:8080/PontoWeb/admin/consultar_ra");
                }, 2500);
            </script>
            <%
                }

            %>

        </div>




    </body>
</html>
