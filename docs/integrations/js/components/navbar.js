const navbar = {

	init: function () {

		// écouteur d'évènement au click sur mon icon burger
		const buttonBurger = document.querySelector('.main-nav__burger');
		buttonBurger.addEventListener('click', navbar.handleClickButtonBurger);

		// écouteur d'évènement au click sur lien genres et langues
		const buttonGenres = document.getElementById('sub-menu__genres');
		const buttonLangues = document.getElementById('sub-menu__langues');
		const buttonAuthors = document.getElementById('sub-menu__authors');
		buttonGenres.addEventListener('click', navbar.handleSubMenu);
		buttonLangues.addEventListener('click', navbar.handleSubMenu);
		buttonAuthors.addEventListener('click', navbar.handleSubMenu);
	},

	handleClickButtonBurger: function() {

		// transforme l'icon burger -- burger/croix
		const burgerIcon = document.querySelector('.main-nav__burger');
		burgerIcon.classList.toggle('main-nav__burger--active');

		// affiche/masque la navigation
		const navbar = document.querySelector('.main-nav__menu');
		navbar.classList.toggle('main-nav__menu--active');

		// permet de masquer les sous menus si fermeture du menu
		const subnav = document.querySelectorAll('.main-nav__menu-item--active');

		// console.log(subnav);

		for (const item of subnav) {

			item.classList.remove('main-nav__menu-item--active');
		}
	},

	handleSubMenu: function(evt) {

		// récupération de l'élément courant
		const currentButton = evt.currentTarget;
		// récupération du parent de l'élément courant
		const subnav = currentButton.closest('.main-nav__menu-item');
		// console.log(subnav);
		// récupération de l'enfant du button
		const arrowLink = currentButton.querySelector('.fas');
		console.log(arrowLink);
		arrowLink.classList.toggle('--down');

		// affiche/masque le sous menu correspondant à l'élément
		subnav.classList.toggle('main-nav__menu-item--active');
	}
}