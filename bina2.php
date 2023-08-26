<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bina</title>
	<link rel="stylesheet" href="main.css">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
</head>

<body>
	<form action="bina2.php" method="post" id="form">
		<div class="img">
			<div id="candidato"></div>
		</div>
		<div class="teclado">
			<div class="logo">
				<span>Justiça Eleitoral</span>
			</div>
			<div class="nums">
				<button id="1">1</button>
				<button id="2">2</button>
				<button id="3">3</button><br>
				<button id="4">4</button>
				<button id="5">5</button>
				<button id="6">6</button><br>
				<button id="7">7</button>
				<button id="8">8</button>
				<button id="9">9</button><br>
				<button id="0">0</button><br>
				<button id="branco">Branco</button>
				<button id="corrige">Corrige</button>
				<button id="confirma">Confirma</button>
			</div>
		</div>
	</form>

	<script>
		// Previnir a página de recarregar ao dar um submit
		let form = document.getElementById("form");
		function handleForm(event) {
			event.preventDefault();
		}
		form.addEventListener('submit', handleForm);2

		let num1 = document.getElementById("1");
		let num2 = document.getElementById("2");

		
		// var1.onclick = function() {
  			// document.var1.style.backgroundColor = "#FF0000";
		 	// document.getElementById("candidato").style.backgroundImage = "url('img.png')";

		// }
	</script>
</body>

</html>