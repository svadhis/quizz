<?php
session_start();

include '../connexion.php';

setcookie('connected', 0, time() -3600, "/");

header('Location: /index.php');