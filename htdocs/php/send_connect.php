<?php
session_start();

include 'connexion.php';

setcookie('nickname', $_POST['nickname'], time() + (86400 * 30), "/");
setcookie('userId', $_POST['userId'], time() + (86400 * 30), "/");
setcookie('connected', 1, time() + 86400, "/");

header('Location: /index.php');