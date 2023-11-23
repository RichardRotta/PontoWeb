<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../assets/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link href="../../styles/styles.css" rel="stylesheet" >

    </head>
    <body class="body-container p-4">
        <div class="container p-5">
            <h1 class="h3 mb-3">Cadastro</h1>
            <form class="form-container" name="FormCliCad" method="post" action="cadastro/cadastro.jsp">

                <div class="mb-3">
                    <label for="nome" class="form-label">RA</label>
                    <input type="text" class="form-control" id="ra" name="ra">
                </div>
                <div class="mb-3">
                    <label for="nome" class="form-label">Nome</label>
                    <input type="text" class="form-control" id="nome" name="nome">
                </div>
                <div class="mb-3">
                    <label for="descricao" class="form-label">CPF</label>
                    <input type="text" class="form-control" id="cpf" name="cpf">
                </div>
                <div class="mb-3">
                    <label for="image" class="form-label">RG</label>
                    <input type="text" class="form-control" id="rg" name="rg">
                </div>
                <div class="mb-3">
                    <label for="recomendacaoUso" class="form-label">E-mail</label>
                    <input type="text" class="form-control" id="email" name="email">
                </div>
                <div class="mb-3">
                    <label for="recomendacaoUso" class="form-label">Setor</label>
                    <input type="text" class="form-control" id="setor" name="setor">
                </div>
                <div class="mb-3">
                    <label for="recomendacaoUso" class="form-label">Numero de Telefone</label>
                    <input type="text" class="form-control" id="numTelefone" name="numTelefone">
                </div>
                <div class="mb-3">
                    <label for="recomendacaoUso" class="form-label">Data de Nascimento</label>
                    <input type="text" class="form-control" id="dataNascimento" name="dataNascimento">
                </div>
                <div class="mb-3">
                    <label for="recomendacaoUso" class="form-label">Equipe</label>
                    <input type="text" class="form-control" id="equipe" name="equipe">
                </div>
                <div class="mb-3">
                    <label for="recomendacaoUso" class="form-label">Cargo</label>
                    <input type="text" class="form-control" id="cargo" name="cargo">
                </div>
                <div class="mb-3">
                    <label for="recomendacaoUso" class="form-label">Carga Horária</label>
                    <input type="text" class="form-control" id="cargaHora" name="cargaHora">
                </div>
                <div class="mb-3">
                    <label for="recomendacaoUso" class="form-label">Status</label>
                    <input type="text" class="form-control" id="status" name="status">
                </div>

                <div class="d-flex  justify-content-center">
                    <button type="reset" class="btn btn-primary ">Limpar</button>
                    <button type="submit" class="btn btn-success ms-3">Salvar</button>
                </div>
            </form>
        </div>
    </body>
</html>
