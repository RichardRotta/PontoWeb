<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.dao.UsuarioDao"%>
<%@page import="model.dao.FuncionarioDAO"%>
<%@page import="model.Usuario"%>
<%@page import="model.Funcionario"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ponto Pessoal</title>
    </head>

    <body>       
        <%
            Funcionario funcionario = new Funcionario();
            FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
            
            String ra = (String) session.getAttribute("ra");
            funcionario.setRa(ra);
            
            if (funcionarioDAO.consultaPessoal(funcionario) != null) {
        %>

        <h1>Seja Bem Vindo,</h1>
        <h1><%=funcionario.getNome()%></h1>

        <div>
            <p><img src="" alt="" width="" height=""> <span><b>Cargo:</b> <%=funcionario.getCargo()%></span></p>
            <p><img src="" alt="" width="" height=""> <span><b>Carga Horária:</b> <%=funcionario.getCargaHora()%></span></p>
            <p><img src="" alt="" width="" height=""> <span><b>Setor:</b> <%=funcionario.getSetor()%></span></p>
        </div>

        <%
            }
        %>

    </body>
</html>
