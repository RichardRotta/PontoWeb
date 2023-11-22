<%@page import="model.dao.TintaDAO"%>
<%@page import="model.Tinta"%>
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
            String id = request.getParameter("id");

            Tinta tinta = new Tinta();
            tinta.setId(id);

            TintaDAO tintaDAO = new TintaDAO();

            if (tintaDAO.consultarId(tinta) != null) {
        %>
        <div class="single-item-container p-5">
            <h3 class="mb-4">Tinta: Alteração</h1> 

                <form class="" name="frmAltFunc" method="post" action="alterar.jsp">
                    <label for="nome">Nome</label>
                    <input type="text"  name="nome" class="form-control mb-3" id="nome" value="<%= tinta.getNome()%>">

                    <label for="descricao">Descrição</label>
                    <input type="text"  name="descricao" class="form-control mb-3" id="descricao"  value="<%= tinta.getDescricao()%>">

                    <label for="image">Imagem:</label>
                    <input type="text"  name="image" class="form-control mb-3" id="image" value="<%= tinta.getImage()%>">

                    <label for="recomendacaoUso"> Recomendação de Uso</label>
                    <input type="text"  name="recomendacaoUso" class="form-control mb-3" id="recomendacaoUso"  value="<%= tinta.getRecomendacaoUso()%>">

                    <label for="recomendacaoUso">Cores Sugeridas</label>
                    <input type="text"  name="coresSugeridas" class="form-control mb-3" id="coresSugeridas"  value="<%= tinta.getCoresSugeridas()%>">

                    <div class="d-flex  justify-content-center">
                        <button type="reset" class="btn btn-primary ">Limpar</button>
                        <button type="submit" class="btn btn-success ms-3">Alterar</button>
                    </div>
                </form>

        </div>

        <%
            } else {
                out.println("<br> <b>Tinta não encontrada! <b>");
            }

        %>

    </body>
</html>
