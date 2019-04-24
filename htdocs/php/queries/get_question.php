<?php
session_start();

include '../connexion.php';

$req = $bdd->prepare('SELECT * FROM games 
                        INNER JOIN users ON games.userId = users.id
                        INNER JOIN themes ON games.themeId = themes.id
                        WHERE games.userId = ? AND games.progression < 6');
$req->execute(array($_COOKIE['userId']));

$response = $req->fetch();

$questionNumber = $_SESSION['question'];
$questions = unserialize($response['questions']);

$req = $bdd->prepare('SELECT * FROM questions WHERE id = ?');
$req->execute(array($questions[$questionNumber]['id']));

$question = $req->fetch();

// Melanger les réponses

$reponses = array('answer1'=> htmlspecialchars($question['answer1']), 'answer2'=> htmlspecialchars($question['answer2']), 'answer3'=> htmlspecialchars($question['answer3']), 'answer4'=> htmlspecialchars($question['answer4']));



function shuffle_assoc($reponses) { 
    if (!is_array($reponses)) return $reponses; 
    $goodAnswer = 0;
    $keys = array_keys($reponses); 
    shuffle($keys); 
    $random = array(); 
    $i = 0;
    foreach ($keys as $key) { 
      $random[$key] = $reponses[$key];
      if ($key == 'answer1') {
        $goodAnswer = $i;
      }
      $i++;
    }
    $random['good'] = $goodAnswer;
    return $random; 
  } 

$reponses = shuffle_assoc($reponses);

$reponses = array_values($reponses);

// theme, numero question, question, reponses
?>

    <?=$response['name']?>|
    <?=$response['progression']?>|
    <?=htmlspecialchars($question['question'])?>|
    <?=$reponses[0]?>|
    <?=$reponses[1]?>|
    <?=$reponses[2]?>|
    <?=$reponses[3]?>|
    <?=$reponses[4]?>

