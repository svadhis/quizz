<?php

include '../connexion.php';

$req = $bdd->prepare('SELECT * FROM users WHERE nickname = ?');
$req->execute(array($_GET['nickname']));

$response = $req->fetch();

if ($response['nickname'] == '') {
    echo 0;
}
else {
    if (isset($_GET['password'])) {
        if (password_verify($_GET['password'], $response['password'])) {
            echo $response['id'];
        }
        else {
            echo 1;
        }
    }
}

