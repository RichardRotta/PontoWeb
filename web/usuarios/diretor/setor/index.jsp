<%@page import="java.awt.Point"%>
<%@page import="model.Funcionario"%>
<%@page import="model.dao.FuncionarioDAO"%>
<%@page import="model.Usuario"%>
<%@page import="model.Pontos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../../assets/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link href="../../../styles/styles.css" rel="stylesheet" >
        <link href="../../../styles/pessoal/style.css" rel="stylesheet" >
        <title>Consulta de Pontos</title>
    </head>
    <body class="body-container">
        <div class="container">

            <%
                Funcionario funcionario = new Funcionario();
                FuncionarioDAO funcionarioDAO = new FuncionarioDAO();

                if (funcionarioDAO.consultaSetor() != null) {
            %>
            <div class="container">
                <h2 class="h2-center">Registros de Pontos</h2>
                <%
                    List<Funcionario> listaSetor = funcionarioDAO.consultaSetor();

                    if (listaSetor == null) {
                %>
                <div class="container p-4">
                    <h3 class=" mb-4">
                        Oops...
                        <small class="text-muted">Não há registros</small>
                    </h3>
                    <img class="img-fluid" src="../../../imagem/mensagem/erroConsulta.svg" alt="não há itens"  width="300" 
                         height="450" /> 
                </div>

                <%
                } else {
                %>
                <table class="ponto-table">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Setor</th>
                            <th>Cargo</th>
                            <th>Carga Horária</th>
                            <th>Hora Extra</th>
                            <th>Data</th>
                            <th>Entrada</th>
                            <th>Entrada Intervalo</th>
                            <th>Saída Intervalo</th>
                            <th>Saída</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (int i = 0; i < listaSetor.size(); i++) {
                                funcionario = listaSetor.get(i);
                        %>
                        <tr>
                            <td><%= funcionario.getNome()%></td>
                            <td><%= funcionario.getCargo()%></td>
                            <td><%= funcionario.getCargaHora()%></td>
                            <td><%= funcionario.getHoraExtra()%></td>
                            <td><%= funcionario.getData()%></td>
                            <td><%= funcionario.getEntrada()%></td>
                            <td><%= funcionario.getEntradaIntervalo()%></td>
                            <td><%= funcionario.getSaidaIntervalo()%></td>
                            <td><%= funcionario.getSaida()%></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <%                }
            } else {
        %>
        <div class="container text-center form-container-2 p-4">
                    <h3 class=" mb-4">
                        Oops...
                        <small class="text-muted">Não há registros</small>
                    </h3>
                    <img class="img-fluid" src="../../../imagem/mensagem/erroConsulta.svg" alt="não há itens"  width="300" 
                         height="450" /> 
                </div>
        <%
            }
        %>

    </div>

</body>
</html>
