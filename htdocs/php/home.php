<?php

$nickname = '';

// Si user vient de finir une partie
if (isset($_SESSION['endgame'])) {
    include 'results.php';
}

// Si user en jeu
else if (isset($_SESSION['ingame'])) {
    include 'game.php';
}

// Si user connecté, afficher le menu de jeu
else if (isset($_COOKIE['connected'])) {
    include 'menu.php';
}

// Sinon, la page de login
else {
    //Si il a toujours un cookie nickname, l'afficher par defaut dans l'input
    if (isset($_COOKIE['nickname'])) {
        $nickname = $_COOKIE['nickname'];
    }
    include 'login.php';
}