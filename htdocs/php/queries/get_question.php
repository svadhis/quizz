<?php
session_start();

include '../connexion.php';

$req = $bdd->prepare('SELECT * FROM games 
                        INNER JOIN users ON games.userId = users.id
                        INNER JOIN themes ON games.themeId = themes.id
                        WHERE games.userId = ? AND games.progression < 6');
$req->execute(array($_COOKIE['userId']));

$response = $req->fetch();

$questionNumber = $response['progression'];
$questions = unserialize($response['questions']);

$req = $bdd->prepare('SELECT * FROM questions WHERE id = ?');
$req->execute(array($questions[$questionNumber]['id']));

$question = $req->fetch();

// Melanger les réponses

$reponses = array(htmlspecialchars($question['answer1']), htmlspecialchars($question['answer2']), htmlspecialchars($question['answer3']), htmlspecialchars($question['answer4']));
shuffle($reponses);

// theme, # question, question, reponses
?>

    <?=$response['name']?>,
    <?=$response['progression']?>,
    <?=htmlspecialchars($question['question'])?>,
    <?=$reponses[0]?>,
    <?=$reponses[1]?>,
    <?=$reponses[2]?>,
    <?=$reponses[3]?>,

