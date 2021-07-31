# PROJET SITE LIVRES

⬇️ [Home](../README.md)

⬇️ [User Stories](user_stories.md)

- Possibilité de trier par : (depuis toutes les pages)
  - prix(+cher & -cher) = sous forme de select en haut à droite,
  - notes (mieux noté entre 3 et 5) = select,
  - dates de sortie (+ récent, - récent) = select,
  - genres = nav principal apparition au click (js) + nav secondaire (sur le coté),
  - langues = nav principal apparition au click (js),
  - auteurs = nav principal apparition au click (js),

## TABLES BDD

- Livres (titre, image, date d'édition, nombre de page, résumé, prix, createdAt, updatedAt)
- Auteurs (firstname, lastname, biographie, createdAt, updatedAt)
- Genres (nom, createdAt, updatedAt)
- Langues (nom, createdAt, updatedAt)
- Formats (nom, createdAt, updatedAt)
- Commentaires/reviews (titre, body, note, createdAt, updatedAt)
- Utilisateurs (username, email, password, createdAt, updatedAt)

## PAGE HOME

- Navigation principale (Home, Books, Genres, Langues, Auteurs, Connexion/Deconnexion, Panier) = sticky nav
- Navigation pied de page (3 colonnes)
  - Réseaux sociaux : facebook, twitter, linkedin (sous forme d'icones), mail + copyright (en bas centré)

  - Maintenance : accès au back (pas prioritaire), juste lien vers page en cours de travaux.
  - SAV : (pas prioritaire), juste lien vers page en cours de travaux.
- Body :
  - Titre de bienvenue + courte description
  - Afficher les 5 dernières sorties (createdAt)
  - Puis "Découvres les nouvelles sorties" (images bouquin) -> "Choisis ton univers" (image planete) -> "Fais toi plaisir" (image panier)

## PAGE BOOKS

- Titre (variable, Tous les bouquins disponibles) + sous-titre = Bienvenue dans le multivers littéraire, il y en a pour tous les gouts,
- Affiche tous les bouquins par ordre alphabétique (titre + image + label en haut à droite = Click to discover)

## PAGE DETAIL

- Image à gauche (label en bas à droite : nombre de pages)
- Description à droite :
  - Titre
  - Date d'édition + auteur
  - Résumé
  - Bouton Back + bouton Acheter (à droite)

## PAGE GENRES

- Titre (variable, affiche le genre sélectionné) + sous titre = bis home
- Affiche tous les bouquins les mieux notés selon le genre

## PAGE LANGUES

- Titre (variable, affiche la langue sélectionné) + sous titre = bis home
- Affiche tous les bouquins les mieux notés selon la langue

## PAGE AUTEURS

- Titre (variable, affiche l'auteur sélectionné) + sous titre = bis home
- Affiche tous les bouquins les mieux notés selon l'auteur

## PAGE AUTHENTIFICATION (symfony)

### PAGE PROFIL

- Titre
- Rappels des informations personnels
  - Username
  - Email
  - Bouton modifier mon profil
  - Bouton réinitialiser mot de passe (optionnel)

### PAGE FORMULAIRE MODIFICATION D'UN UTILISATEUR

- Modifier username
- Modifier email

## PAGE PANIER

- Titre : Plus qu'un pas à franchir
- Affiche la liste des produits sélectionné
