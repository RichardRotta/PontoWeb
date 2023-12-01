<%@page import="model.Funcionario"%>
<%@page import="model.dao.FuncionarioDAO"%>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../../assets/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link href="../../../styles/styles.css" rel="stylesheet" >
        <title>Consulta de Setor</title>
    </head>
    <body>
        <%
            Funcionario funcionario = new Funcionario();
            Usuario usuario = new Usuario();
            String setor = (String) session.getAttribute("setor");
            funcionario.setSetor(setor);
        %>
        <div class="container">

            <h1 class="container-h1">Consulta de Funcionario [<%=funcionario.getSetor()%>] </h1>

            <%
                FuncionarioDAO funcionarioDAO = new FuncionarioDAO();

                if (funcionarioDAO.consultaSetor()!= null) {
            %>
            <div id="catalog" class="container">
                <div class="row  text-center">
                    <%
                        List<Funcionario> listaSetor = funcionarioDAO.consultaSetor();

                        if (listaSetor == null) {
                    %>
                    <div class="container p-4 mt-5">
                        <h3 class="mt-5 mb-4">
                            Oops...
                            <small class="text-muted">Não há itens</small>
                        </h3>
                        <img class="img-fluid" src="imagem/mensagem/erroConsulta.svg" alt="não há itens"  width="300" 
                             height="450" /> 

                    </div>

                    <%
                    } else {
                        for (int i = 0; i < listaSetor.size(); i++) {
                            funcionario = listaSetor.get(i);

                    %>

                    <div class="col-12 col-md-6 col-lg-4 mb-4 p-3">
                        <div class="item-box catalog-item-container">
                            <p><b>Nome:</b> <%= funcionario.getNome()%></p>
                            <p><b>Setor:</b> <%= funcionario.getSetor()%></p>
                            <p><b>Cargo:</b> <%= funcionario.getCargo()%></p>
                            <p><b>Carga Horária:</b> <%= funcionario.getCargaHora()%></p>
                            <p><b>Horas Extras:</b>: <%= funcionario.getHoraExtra()%></p>
                        </div>
                    </div>
                    <%
                            }
                        }
                    %>
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
