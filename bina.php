<?php
require("conexao.php");

if (isset($_POST["lula"])) {
	$query = "INSERT INTO `lulavotos`(`id`, `hora`) VALUES (default,default)";
	mysqli_query($conexao, $query);
	// echo "<script>alert('Obrigado por votar!');</script>";
}
if (isset($_POST["bolso"])) {
	$query = "INSERT INTO `bolsovotos`(`id`, `hora`) VALUES (default,default)";
	mysqli_query($conexao, $query);
	// echo "<script>alert('Obrigado por votar!');</script>";
}
if (isset($_POST["nulo"])) {
	$query = "INSERT INTO `nullvotos`(`id`, `hora`) VALUES (default,default)";
	mysqli_query($conexao, $query);
	// echo "<script>alert('Obrigado por votar!');</script>";
}
?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bina</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
	<form method="post" action="">
		<label>Escolha seu candidato</label><br>
		<button onclick="botao" name="lula">Lula</button>
		<button onclick="botao" name="bolso">Bolsonaro</button>
		<button onclick="botao" name="nulo">Nulo</button>
	</form>

	<script>
		function botao() {
			alert("Obrigado por votar!");
		}
	</script>
</body>

</html>