<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Escolha de Pontos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../../assets/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link href="../../styles/styles.css" rel="stylesheet" >
        <link href="../../styles/pessoal/style.css" rel="stylesheet" >
    </head>
    <body class="body-container">
        <div class="container p-5 form-container">
        <h1 class="h3 mb-5">Escolha qual opção deseja usar!</h1>
            <div class="logout-button">
                <button onclick="pessoal()">Pontos Pessoais</button><br/>
                <button onclick="setor()">Pontos Setores</button><br/>
                <button onclick="logout()">Sair</button><br/>
            </div>
        </div>
        <script>
            function pessoal()
            {
                window.location.href = "http://localhost:8080/PontoWeb/usuarios/rh/pessoal";
            }
            function setor()
            {
                window.location.href = "http://localhost:8080/PontoWeb/usuarios/rh/setores";
            }
            function logout()
            {
                localStorage.setItem("logado", "false");
                window.location.replace("http://localhost:8080/PontoWeb");
            }
        </script>
    </body>
</html>
