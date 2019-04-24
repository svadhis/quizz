<?php
session_start();

include '../connexion.php';

// $_POST['theme']

// Recuperer l'id de l'user, et l'id du theme

// Avec ca, aller trouver toutes les parties de cet utilisateur qui sont pas terminées

// Terminer toutes ces parties (donc progression = 6)

    $req = $bdd->prepare('UPDATE games SET progression = 6 WHERE userId = ? AND progression < 6');
    $req->execute(array($_COOKIE['userId']));

// Générer les questions aléatoirement

// Aller chercher dans la base les questions du theme choisi

$req = $bdd->prepare('SELECT id FROM questions WHERE themeId = ?');
$req->execute(array($_POST['theme']));

$response = $req->fetchAll();

// Les melanger

shuffle($response);

// Récuperer les 6 premieres une fois melangees

$questions = array_slice($response, 0, 6); 

// Inserer une nouvelle ligne (donc nouvelle partie) avec les questions générées aléatoirement

    $req = $bdd->prepare('INSERT INTO games (themeId, userId, questions) VALUES (?,?,?)');
    $req->execute(array($_POST['theme'], $_COOKIE['userId'], serialize($questions)));

    $req = $bdd->prepare('SELECT id FROM games WHERE userId = ? AND progression = 0');
    $req->execute(array($_COOKIE['userId']));
    
    $response = $req->fetch();

    $_SESSION['ingame'] = 1;
    $_SESSION['question'] = 0;
    $_SESSION['gameid'] = $response['id'];
    $_SESSION['answers'] = array();
    $_SESSION['score'] = 0;


    header('Location: /index.php');