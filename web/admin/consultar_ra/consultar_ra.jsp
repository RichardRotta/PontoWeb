<%@page import="model.dao.TintaDAO"%>
<%@page import="model.Tinta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet" >
        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet" >

    </head>
    <body>
        <div class="container">

            <h1 class="sigle-item-title">Consulta de Tinta</h1>

            <%
                String ra = request.getParameter("ra");

                Tinta tinta = new Tinta();
                tinta.setId(ra);

                TintaDAO tintaDAO = new TintaDAO();

                if (tintaDAO.consultarId(tinta) != null) {
            %>
            <div class="single-item-container">
                <div class="p-3">
                    <p><%= tinta.getRa()%></p>
                    <p><%= tinta.getNome()%></p>
                    <p><%= tinta.getCpf()%></p>
                    <p><%= tinta.getRg()%></p>
                    <p><%= tinta.getSetor()%></p>
                    <p><%= tinta.getNumeroTelefone()%></p>
                    <p><%= tinta.getDataNascimento()%></p>
                    <p><%= tinta.getCargo()%></p>
                    <p><%= tinta.getCargaHora()%></p>
                    <p><%= tinta.getHoraExtra()%></p>
                    <p><%= tinta.getAcesso()%></p>

                </div>
                  
            </div>
            <%
            } else {
            %>

            <div class="alert alert-danger" role="alert">
                Item não encontrado.
            </div>
            <%
                }

            %>

        </div>




    </body>
</html>
