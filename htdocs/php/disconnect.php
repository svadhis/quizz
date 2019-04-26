<?php
session_start();

include 'connexion.php';

unset ($_SESSION["ingame"]);
unset ($_SESSION["endgame"]);

header('Location: /');