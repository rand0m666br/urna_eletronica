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

// Mostrar mensagem de fim
function alerta() {
	const obg = document.getElementById("obg");
	obg.style.display = "block";
}

// Capturar 2 dígitos consecutivos digitados
let buttons = document.querySelectorAll('button');
let lastDigit = null;

buttons.forEach(button => {
	button.addEventListener('click', function(event) {
		let digit = event.target.id;

		// Detectando caso o voto seja BRANCO ou NULO
		// Melhorar isso aqui depois
		if (digit == 'branco') {
			alert('branco');
		}
		if (digit == 'confirma' && lastDigit == null) {
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
						alerta();

						// Requisição via AJAX
						let xhr = new XMLHttpRequest();
						xhr.open("POST", "php/bolsovoto.php", true);
						xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

						xhr.send();
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
						alerta();

						// Requisição via AJAX
						let xhr = new XMLHttpRequest();
						xhr.open("POST", "php/lulavotos.php", true);
						xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

						xhr.send();
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