<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.dao.UsuarioDao"%>
<%@page import="model.Usuario"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ponto Pessoal</title>
</head>

<body>
    <%
        // Obter o ra
        String ra = request.getParameter("ra");

        if (ra != null && !ra.isEmpty()) {
            UsuarioDao usuarioDao = new UsuarioDao();
            Usuario usuario = new Usuario();
            usuario.setRa(ra); // Defina o ra no objeto Usuario

            if (usuario != null) {
    %>
    <h1>Seja Bem Vindo,<%= usuario.getNome()%></h1>
    
    <!-- Outros elementos HTML ou lógica aqui -->
    
    <%
            }
            
            try {
                usuarioDao.fecharConexao();
            } catch (Exception e) {
                out.println("Erro ao fechar a conexão: " + e.getMessage());
                e.printStackTrace();
            }
        }
    %>
</body>
</html>
