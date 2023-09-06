<?php require("conexao.php"); ?>
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
			<span id="titulo">Presidente</span>
			<div id="resu">
				<div id="linha">
					<label>Número:</label>
					<span id="numres"></span>
				</div>
				<div id="linha">
					<label>Nome:</label>
					<span id="nomeres"></span>
				</div>
				<div id="linha">
					<label>Partido:</label>
					<span id="partres"></span>
				</div>
				<div id="linha">
					<label>Vice-Presidente:</label>
					<span id="viceres"></span>
				</div>
			</div>
			<div id="candidato"></div>
			<span id="pres">Presidente</span>
			<div id="vice"></div>
			<span id="vicepres">Vice-Presidente</span>
			<div id="confirmacao">
				<p>Aperte a tecla:</p>
				<p>CONFIRMA para CONFIRMAR este voto</p>
				<p>CORRIGE para REINICIAR este voto</p>
			</div>
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
		// Está enviando votos mesmo sem apertar no confirma. Consertar urgentemente

		// Previnir a página de recarregar ao dar um submit
		let form = document.getElementById("form");

		function handleForm(event) {
			event.preventDefault();
		}
		form.addEventListener('submit', handleForm);

		// Tocar áudio
		function toca() {
			const audio = new Audio("urna.mp3");
			audio.play();
		}

		function alerta() {
			alert('Obrigado por votar');
		}

		// Capturar 2 dígitos consecutivos digitados
		let buttons = document.querySelectorAll('button');
		let lastDigit = null;

		buttons.forEach(button => {
			button.addEventListener('click', function(event) {
				let digit = event.target.id;

				// Detectando caso o voto seja BRANCO ou NULO
				// Melhorar isso aqui depois
				if(digit == 'branco'){
					alert('branco');
				}
				if(digit == 'confirma' && lastDigit == null){
					alert('nulo');
				}

				if (!isNaN(digit) && lastDigit !== null) {
					let consecDigitos = lastDigit + digit;

					// Ação a ser executada ao apertar 2 dígitos
					switch (consecDigitos) {
						case "22":
							document.getElementById("candidato").style.backgroundImage = "url('imagens/22p.png')";
							document.getElementById("vice").style.backgroundImage = "url('imagens/22vice.png')";
							document.getElementById("numres").innerHTML = 22;
							document.getElementById("nomeres").innerHTML = 'Jair Bolsonaro';
							document.getElementById("partres").innerHTML = 'PL';
							document.getElementById("viceres").innerHTML = 'Braga Netto';

							document.getElementById("confirma").addEventListener('click', function() {
								toca();
								setTimeout(alerta, 100);

								// Começo da requisição via AJAX
								let xhr = new XMLHttpRequest();
								xhr.open("POST", "bolsovoto.php", true);
								xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

								// Erro extremamente estúpido. O PHP será carregado antes de tudo e contará os votos para o candidato
								<?php require("bolsovoto.php"); ?>
							});
							break;
						case "13":
							document.getElementById("candidato").style.backgroundImage = "url('imagens/13p.png')";
							document.getElementById("vice").style.backgroundImage = "url('imagens/13vice.png')";
							document.getElementById("numres").innerHTML = 13;
							document.getElementById("nomeres").innerHTML = 'Lula';
							document.getElementById("partres").innerHTML = 'PT';
							document.getElementById("viceres").innerHTML = 'Geraldo Alckmin';

							document.getElementById("confirma").addEventListener('click', function() {
								toca();
								setTimeout(alerta, 100);

								// Novamente o erro
								<?php require("lulavotos.php"); ?>
							});
							break;
					}
				}

				lastDigit = digit;
			})
		});

		window.addEventListener('keyup', function() {
			lastDigit = null;
		});
	</script>
</body>

</html>