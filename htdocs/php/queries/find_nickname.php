<?php

include '../connexion.php';

$req = $bdd->prepare('SELECT * FROM users WHERE nickname = ?');
$req->execute(array($_GET['nickname']));

$response = $req->fetch();

if ($response['nickname'] == '') {
    echo 'no user';
}
else {
    if (isset($_GET['password'])) {
        if (password_verify($_GET['password'], $response['password'])) {
            echo $response['id'];
        }
        else {
            echo 'wrong password';
        }
    }
}

