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
                String id = request.getParameter("id");

                Tinta tinta = new Tinta();
                tinta.setId(id);

                TintaDAO tintaDAO = new TintaDAO();

                if (tintaDAO.consultarId(tinta) != null) {
            %>
            <div class="single-item-container">
                <img src=<%= tinta.getImage()%> alt="Imagem">
                <div class="p-3">
                    <p><%= tinta.getNome()%></p>
                    <p><%= tinta.getDescricao()%></p>
                    <p><%= tinta.getRecomendacaoUso()%></p>
                    <p><%= tinta.getCoresSugeridas()%></p>

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
