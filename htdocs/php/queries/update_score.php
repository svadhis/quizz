<?php
session_start();

include '../connexion.php';

if ($_GET['result'] == 1) {
    $addScore = round(10000/$_GET['timer']);
    if ($addScore > 1000) {
        $addScore = 1000;
    }
    array_push($_SESSION['score'], $addScore);
    // $_SESSION['score'] = round($_SESSION['score'] + ($_GET['result']*10000/$_GET['timer']));
}
else {
    array_push($_SESSION['score'], 0);
}
$_SESSION['question']++;
echo $_SESSION['question'];

