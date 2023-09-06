<?php
// Conectar ao banco de dados MySQL (substitua as credenciais)
$conexao = new mysqli("localhost", "root", "", "bancoteste");

// Verificar a conexão
if ($conexao->connect_error) {
    die("Erro na conexão com o banco de dados: " . $conexao->connect_error);
}

// Verifica se a ação é "botaoPressionado"
if (isset($_POST["acao"]) && $_POST["acao"] === "botaoPressionado") {
    // Registra o clique no botão no banco de dados
    $sql = "INSERT INTO registros (acao) VALUES ('Botão pressionado')";
    if ($conexao->query($sql) === TRUE) {
        $resposta = array("sucesso" => true, "mensagem" => "Registro bem-sucedido");
    } else {
        $resposta = array("sucesso" => false, "mensagem" => "Erro no registro: " . $conexao->error);
    }
    echo json_encode($resposta);
} else {
    echo json_encode(array("sucesso" => false, "mensagem" => "Ação desconhecida"));
}

// Fechar a conexão
$conexao->close();
?>
