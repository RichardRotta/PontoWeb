<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link href="../styles/styles.css" rel="stylesheet" >

    </head>
    <body class="body-container p-4">
        <div class="container p-5">
            <h1 class="h3 mb-3">Cadastro</h1>
            <form class="form-container" name="FormCliCad" method="post" action="cadastro/cadastro.jsp">

                <div class="mb-3">
                    <label for="nome" class="form-label">Nome</label>
                    <input type="text" class="form-control" id="nome" name="nome">
                </div>
                <div class="mb-3">
                    <label for="descricao" class="form-label">Hexadecimal</label>
                    <input type="text" class="form-control" id="descricao" name="descricao">
                </div>
                <div class="mb-3">
                    <label for="image" class="form-label">URLImagem</label>
                    <input type="text" class="form-control" id="image" name="image">
                </div>
                <div class="mb-3">
                    <label for="recomendacaoUso" class="form-label">Recomendação de uso</label>
                    <input type="text" class="form-control" id="recomendacaoUso" name="recomendacaoUso">
                </div>
                <div class="mb-3">
                    <label for="recomendacaoUso" class="form-label">Cores combinantes sugeridas</label>
                    <input type="text" class="form-control" id="coresSugeridas" name="coresSugeridas">
                </div>

                <div class="d-flex  justify-content-center">
                    <button type="reset" class="btn btn-primary ">Limpar</button>
                    <button type="submit" class="btn btn-success ms-3">Salvar</button>
                </div>
            </form>
        </div>
    </body>
</html>
