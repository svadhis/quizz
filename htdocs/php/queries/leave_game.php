<?php
session_start();

include '../connexion.php';

unset($_SESSION['ingame']); 

header('Location: /index.php');