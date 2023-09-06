<?php 
$host = "localhost";
$user = "root";
$senha = "";
$banco = "urna";

$conexao = mysqli_connect($host, $user, $senha, $banco);

define("BD_USUARIO", "root");
define("BD_SENHA", "");
define("BD_DSN", "mysql:dbname=urna;host=localhost");

try {
	$pdo = new PDO(BD_DSN, BD_USUARIO, BD_SENHA);
} catch (PDOException $e) {
	echo "Falha na conexao com banco de dados: " . $e->getMessage();
	die();
}
?>