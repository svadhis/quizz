<?php
session_start();

include 'connexion.php';

/* $req = $bdd->prepare('INSERT INTO users (nickname, password) VALUES (?, ?)');
$req->execute(array($_POST['nickname'], password_hash($_POST['password'], PASSWORD_DEFAULT)));

$req = $bdd->prepare('SELECT id FROM questions WHERE themeId = ?');
$req->execute(array($_POST['theme']));

$response = $req->fetchAll(); */

/* $_SESSION['ingame'] = 1;
$_SESSION['question'] = 0;
$_SESSION['gameid'] = $response['id'];
$_SESSION['answers'] = array();
$_SESSION['score'] = 0; */

$answers = serialize($_SESSION['score']);

$score = 0;
foreach ($_SESSION['score'] as $value) {
    $score += $value;
}

$req = $bdd->prepare('UPDATE games SET answers = ?, score = ?, progression = ? WHERE id = ?');
$req->execute(array($answers, $score, 6, $_SESSION['gameid']));

unset ($_SESSION["ingame"]);
unset ($_SESSION["question"]);
unset ($_SESSION["answers"]);

$_SESSION['endgame'] = 1;

header('Location: /index.php');

/* 

rediriger dans index

*/