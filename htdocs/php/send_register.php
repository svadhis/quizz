<?php
session_start();

include 'connexion.php';


$req = $bdd->prepare('INSERT INTO users (nickname, password) VALUES (?, ?)');
$req->execute(array($_POST['nickname'], password_hash($_POST['password'], PASSWORD_DEFAULT)));

setcookie('nickname', $_POST['nickname'], time() + (86400 * 30), "/");

$_SESSION['registered'] = 1;

header('Location: /index.php');