<?php
	// Foi necessário criar outra tabela e arquivo php só para os votos brancos
	// porque os incompetentes do TSE decidiram que os dois devem ser diferentes
	require("conexao.php");

	$query = "INSERT INTO `brancovotos`(`id`, `hora`) VALUES (default, default)";
	mysqli_query($conexao, $query);
?>