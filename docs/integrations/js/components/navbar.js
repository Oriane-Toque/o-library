const navbar = {

	init: function () {

		// écouteur d'évènement au click sur mon icon burger
		const buttonBurger = document.querySelector('.main-nav__burger');
		buttonBurger.addEventListener('click', navbar.handleClickButtonBurger);
	},

	handleClickButtonBurger: function () {

		// transforme l'icon burger -- burger/croix
		const burgerIcon = document.querySelector('.main-nav__burger');
		burgerIcon.classList.toggle('main-nav__burger--active');

		// affiche/masque la navigation
		const navbar = document.querySelector('.main-nav__menu');
		navbar.classList.toggle('main-nav__menu--active');
	}
}