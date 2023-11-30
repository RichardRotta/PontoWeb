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
            String ra = request.getParameter("ra");

            Tinta tinta = new Tinta();
            tinta.setId(ra);

            TintaDAO tintaDAO = new TintaDAO();

            if (tintaDAO.consultarId(tinta) != null) {
        %>
        <div class="single-item-container p-5">
            <h3 class="mb-4">Atualização Funcionário</h3> 

                <form class="" name="frmAltFunc" method="post" action="atualizar.jsp">
                    <label for="nome">RA:</label>
                    <input type="text"  name="ra" class="form-control mb-3" id="ra" value="<%= tinta.getRa()%>">

                    <label for="descricao">Senha:</label>
                    <input type="text"  name="senha" class="form-control mb-3" id="senha"  value="<%= tinta.getNome()%>">

                    <label for="image">Acesso:</label>
                    <input type="text"  name="acesso" class="form-control mb-3" id="acesso" value="<%= tinta.getCpf()%>">

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
