const app = {
	init: function() {

		// module qui prendre en charge le fonctionnement de la navbar
		navbar.init();
	}
}

document.addEventListener('DOMContentLoaded', app.init);