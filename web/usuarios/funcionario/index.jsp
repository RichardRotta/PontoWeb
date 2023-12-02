<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.dao.UsuarioDao"%>
<%@page import="model.dao.FuncionarioDAO"%>
<%@page import="model.Usuario"%>
<%@page import="model.Funcionario"%>
<%@page import="model.Pontos"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../assets/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link href="../../styles/pessoal/style.css" rel="stylesheet" >
        <title>Ponto Pessoal</title>
    </head>

    <body class="body-container-2 p-4">   
        <%
            Funcionario funcionario = new Funcionario();
            FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
            Pontos pontos = new Pontos();

            String ra = (String) session.getAttribute("ra");
            funcionario.setRa(ra);

            if (funcionarioDAO.consultaPessoal(funcionario) != null) {
        %>
        <div class="link-container-2">
            <div class="container p-5 form-container-2"> 
                <div class="title-name-container">
                    <h1 class="container-h1-title">Seja Bem Vindo,</h1>
                    <h1 class="container-h1-name"><%=funcionario.getNome()%></h1>
                </div> <!<!--title-name-->

                <div class="container-hours">
                    <h1>Horas Extras</h1>
                    <p><%= funcionario.getHoraExtra()%>Hrs</p>
                </div><!--<!--container-hours-->
                <div class="container-info">
                    <p><img style="width: 26px; height: 26px;" src="../../imagem/ponto_pessoal/Cargo.svg" alt="" width="" height=""> <span><%=funcionario.getCargo()%></span></p>
                    <p><img style="width: 26px; height: 26px;" src="../../imagem/ponto_pessoal/Carga horária.svg" alt="" width="" height=""> <span><%=funcionario.getCargaHora()%></span></p>
                    <p><img style="width: 26px; height: 26px;" src="../../imagem/ponto_pessoal/Setor.svg" alt="" width="" height=""> <span><%=funcionario.getSetor()%></span></p>
                </div><!--container-info-->

                <div class="container">
                    <h2 class="h2-center">Registros de Pontos</h2>
                    <%
                        String ra2 = (String) session.getAttribute("ra");
                        pontos.setRa(ra2);
                        List<Pontos> listaPontoPessoal = funcionarioDAO.consultaPontoPessoal();
                        if (listaPontoPessoal == null) {
                    %>
                    <div class="container p-4">
                        <h3 class=" mb-4">
                            Oops...
                            <small class="text-muted">Não há registros</small>
                        </h3>
                        <img class="img-fluid" src="../../imagem/mensagem/erroConsulta.svg" alt="não há itens"  width="300" 
                             height="450" /> 
                    </div>

                    <%
                    } else {
                    %>
                    <table class="ponto-table">
                        <thead>
                            <tr>
                                <th>Data</th>
                                <th>Entrada</th>
                                <th>Entrada Intervalo</th>
                                <th>Saída Intervalo</th>
                                <th>Saída</th>
                                <!-- Adicione mais colunas conforme necessário -->
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (int i = 0; i < listaPontoPessoal.size(); i++) {
                                    pontos = listaPontoPessoal.get(i);
                            %>
                            <tr>
                                <td><%= pontos.getData()%></td>
                                <td><%= pontos.getEntrada()%></td>
                                <td><%= pontos.getEntradaIntervalo()%></td>
                                <td><%= pontos.getSaidaIntervalo()%></td>
                                <td><%= pontos.getSaida()%></td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                        </tbody>
                    </table>
                </div>
                <div class="logout-button">
                    <button onclick="logout()">Sair</button>
                </div>
            </div>
        </div>
        <script>
            function logout()
            {
                localStorage.setItem("logado", "false");
                window.location.replace("http://localhost:8080/PontoWeb");
            }
        </script>
        <%
            } else {
            }
        %>
    </body>
</html>
