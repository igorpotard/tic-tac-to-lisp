# Tic-Tac-Toe en Lisp

Ce projet est une implémentation simple du jeu de morpion (Tic-Tac-Toe) en Lisp. Le jeu permet à deux joueurs de jouer en alternance sur une grille 3x3.

## Fonctionnalités

- Affichage du plateau de jeu.
- Alternance des tours entre deux joueurs (X et O).
- Vérification des conditions de victoire après chaque mouvement.
- Messages d'erreur pour les mouvements invalides.

## Prérequis

- Un interpréteur Lisp (par exemple, SBCL ou CLISP).

## Installation

1. Clonez ce dépôt sur votre machine locale :

    ```sh
    git clone https://github.com/igorpotard/tic-tac-toe-lisp.git
    ```

2. Naviguez dans le répertoire du projet :

    ```sh
    cd tic-tac-toe-lisp
    ```

3. Compiler le fichier :

    ```sh
    clisp -c tic-tac-toe.lisp
    ```

4. Jouer :

    ```sh
    clisp tic-tac-toe.fas
    ```

## Fonctions Principales

- `play-game` : Fonction principale qui gère le déroulement du jeu.
- `print-board` : Affiche le plateau de jeu.
- `check-win` : Vérifie si un joueur a gagné.
