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

// Voto em branco
const msgBranco = document.getElementById("msgbranco");
function votoBranco() {
	msgBranco.style.display = "block"
	document.getElementById("vicepres").style.display = "none";
}

// Mostrar mensagem de fim
function alerta() {
	const obg = document.getElementById("obg");
	obg.style.display = "block";
	if(msgBranco.style.display == "block"){
		msgBranco.style.display = "none";
	}
}

// Esconder imagem inicial
function esconde() {
	const jus = document.getElementById("jus");
	jus.style.display = "none";
}

// Capturar 2 dígitos consecutivos digitados
let buttons = document.querySelectorAll('button');
let lastDigit = null;

buttons.forEach(button => {
	button.addEventListener('click', function(event) {
		let digit = event.target.id;
		esconde();

		// Pegar elementos do HTML
		let candidato = document.getElementById("candidato");
		let vice = document.getElementById("vice");
		let numres = document.getElementById("numres");
		let nomeres = document.getElementById("nomeres");
		let partres = document.getElementById("partres");
		let viceres = document.getElementById("viceres");
		let confirma = document.getElementById("confirma");

		// Detectando caso o voto seja BRANCO ou NULO
		// Melhorar isso aqui depois

		// Votos em branco
		if (digit == 'branco') {
			votoBranco();

			confirma.onclick = function() {
				toca();
				alerta();

				// Requisição via AJAX
				let xhr = new XMLHttpRequest();
				xhr.open("POST", "php/nulo.php", true);
				xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

				xhr.send();
			};
		}
		if (digit == 'confirma' && lastDigit == null) {
			alert('nulo');
		}

		if (!isNaN(digit) && lastDigit !== null) {
			let consecDigitos = lastDigit + digit;

			// Ação a ser executada ao apertar 2 dígitos
			switch (consecDigitos) {
				// Votos para o candidato 22
				case "22":
					candidato.style.backgroundImage = "url('imagens/22p.png')";
					vice.style.backgroundImage = "url('imagens/22vice.png')";
					numres.innerHTML = 22;
					nomeres.innerHTML = 'Jair Bolsonaro';
					partres.innerHTML = 'PL';
					viceres.innerHTML = 'Braga Netto';
					document.getElementById("vicepres").style.display = "block";

					confirma.onclick = function() {
						toca();
						alerta();

						// Requisição via AJAX
						let xhr = new XMLHttpRequest();
						xhr.open("POST", "php/bolsovoto.php", true);
						xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

						xhr.send();
					};
					break;
				// Votos para o candidato 13
				case "13":
					candidato.style.backgroundImage = "url('imagens/13p.png')";
					vice.style.backgroundImage = "url('imagens/13vice.png')";
					numres.innerHTML = 13;
					nomeres.innerHTML = 'Lula';
					partres.innerHTML = 'PT';
					viceres.innerHTML = 'Geraldo Alckmin';
					document.getElementById("vicepres").style.display = "block";

					confirma.onclick = function() {
						toca();
						alerta();

						// Requisição via AJAX
						let xhr = new XMLHttpRequest();
						xhr.open("POST", "php/lulavotos.php", true);
						xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

						xhr.send();
					};
					break;
			}
		}

		lastDigit = digit;
	});
});

document.getElementById("corrige").onclick = () => {
	lastDigit = null;

	candidato.style.backgroundImage = null;
	vice.style.backgroundImage = null;
	numres.innerHTML = null;
	nomeres.innerHTML = null;
	partres.innerHTML = null;
	viceres.innerHTML = null;

	if (msgBranco.style.display == "block") {
		msgBranco.style.display = "none";
	}
}