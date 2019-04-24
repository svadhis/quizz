<?php
session_start();

include '../connexion.php';

if ($_SESSION['question'] < 6) {
    array_push($_SESSION['answers'], $_GET['answerid']);
    if ($_GET['result'] == 1) {
        $_SESSION['score'] = round($_SESSION['score'] + ($_GET['result']*10000/$_GET['timer']));
    }
    $_SESSION['question']++;
    echo $_SESSION['question'];
}
else {
    $req = $bdd->prepare('UPDATE games SET ');
    $req->execute(array($_GET['nickname']));
    
    $response = $req->fetch();
}

