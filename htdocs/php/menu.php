
    <?php

    // Template de selection des themes
    $req = $bdd->query('SELECT * FROM themes');

    $viewMobile = '';
    $viewDesk = '';
    $viewDeskCard = array();

    $x = 0;

    $tabColors = array(
        'bg-html',
        'bg-css',
        'bg-php',
        'bg-js'
    );

    while ($theme = $req->fetch()) {
        // Recuperer et afficher le meilleur score perso
        $req2 = $bdd->prepare('SELECT MAX(score) AS max FROM games WHERE userId = ? AND themeId = ?');
        $req2->execute(array($_COOKIE['userId'], $theme['id']));

        $score = $req2->fetch();
        $myBestScore = '';

        if ($score['max']) {
            $myBestScore = 'Meilleur score perso : ' . $score['max'];
        } else {
            $myBestScore = "";
        }

        // Recuperer et afficher les top scores pour chaque theme
        $req3 = $bdd->prepare('SELECT nickname, MAX(score) AS score FROM games 
                                INNER JOIN users ON games.userId = users.id
                                WHERE games.themeId = ? 
                                GROUP BY users.nickname');
        $req3->execute(array($theme['id']));

        $scores = $req3->fetchAll();

        $topScores = '';

        usort($scores, function ($item1, $item2) {
            return $item2['score'] <=> $item1['score'];
        });

        $i = 1;
        foreach ($scores as $score) {
            if ($i < 6) {
            $isTop = '';
            if ($score['nickname'] == $_COOKIE['nickname']) {
                $isTop = 'text-danger font-weight-bold';
            }
            $topScores = $topScores . '<tr class="' . $isTop . '">
                            <th scope="row">' . $i . '</th>
                            <td>' . $score['nickname'] . '</td>
                            <td>' . $score['score'] . '</td>
                        </tr>';
            $i++;
            }
        }

        // Template menu sur mobile
        $viewMobile = $viewMobile. '
        <div class="card">
            <div class="card-header titre-theme '. $tabColors[$x] .'" id="heading'. $theme['id'] .'">
                <div class="mb-0">
                    <button class="btn btn-link text-decoration-none text-body" onclick="selectTab('. $theme['id'] .');" type="button" data-toggle="collapse" data-target="#collapse'. $theme['id'] .'" aria-expanded="true" aria-controls="collapseOne">
                        <h4>'. $theme['name'] .'</h4>
                    </button>
                </div>
            </div>

            <div id="collapse'. $theme['id'] .'" class="collapse" aria-labelledby="heading'. $theme['id'] .'" data-parent="#accordionExample">

                <div class="row card-body">
                    <div class="col-12">
                        <h4>'. $myBestScore .'</h4>
                    </div>
                    <div class="col-6 d-block p-2 text-right">
                        <form action="php/queries/start_game.php" method="post">
                            <input type="hidden" name="theme" value="'. $theme['id'] .'">
                            <button class="btn btn-outline-primary rounded-pill" style="width: 142px;" type="submit"> Play Game 🎮️ </button>
                        </form>
                    </div>
                    <div class="col-6 d-block p-2 text-left">
                        <button class="btn btn-outline-danger rounded-pill" data-toggle="modal" data-target="#modal'. $theme['id'] .'"> Top scores 🔥</button>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="modal'. $theme['id'] .'" tabindex="-1" role="dialog" aria-labelledby="modal'. $theme['id'] .'Label" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title p-3 mb-2 bg-warning text-dark rounded-pill border border-dark" id="modal'. $theme['id'] .'Label">'. $theme['name'] .' - Top 5 🏅</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <table class="table table-striped">
                                        <tbody>
                                            '. $topScores .'
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>';

        // Template menu sur desktop - barre de navigation themes
        $viewDesk = $viewDesk. '       
  <li class="nav-item">
    <a id ="nav'. $theme['id'] .'" class="nav-link active bg-warning" onclick="selectTab('. $theme['id'] .');" data-toggle="collapse" data-target="#collapse'. $theme['id'] .'"><h4>'. $theme['name'] .'</h4></a>
  </li>';

  // Template menu sur desktop - card
  array_push($viewDeskCard, '
  
    <div class="offset-1 col-5 mt-5">
        <div class="col-12 d-block p-2 bg-primary rounded-pill border border-dark">
            <form action="php/queries/start_game.php" method="post">
                <input type="hidden" name="theme" value="'. $theme['id'] .'">
                <button class="btn btn-lg btn btn-primary btn-block rounded-pill" type="submit"> Play Game 🎮 </button>
            </form>
        </div>
        <div class="col-12">
            <h4 class="text-center mt-5">'. $myBestScore .'</h4>
        </div>
    </div>
    <div class="col-5 mt-5">
    <h4 class="top5 text-center p-3 mb-2 text-dark rounded-pill border border-dark">Top 5 🏆</h4>
        <table class="table table-striped">
            <tbody>
                '. $topScores .'
            </tbody>
        </table>
    </div>');

  $x++;

}

$json = json_encode($viewDeskCard);
$json = json_encode($json);

?>

<br>
<div class="row">
    <div class="col-12 text-center">
    <h4><a href="#" class="btn btn-secondary btn-lg disabled rounded-pill" style="width: 260px;" tabindex="-1" role="button" aria-disabled="true">Choisissez un thème ↷</a></h4>
    </div>
</div>
<br>
<div class="accordion d-md-none" id="accordionExample">
    <?=$viewMobile?>
</div>

<div class="container mt-5 d-none d-md-block">
    <div class="row">
        <div class="col-12">
            <ul class="nav nav-fill">
                <?=$viewDesk?>
            </ul>
        </div>
    </div> 
    <div class="row deskcard">
        <?=$viewDeskCard[0]?>
    </div> 
</div>


<script>

function selectTab(id) {

    let tabColors = [
        'bg-html',
        'bg-css',
        'bg-php',
        'bg-js'
    ];

    json = <?= $json ?>;
    let Cards = JSON.parse(json);
    let navTabs =  document.querySelectorAll('.nav-link');
   
    document.querySelector('.deskcard').innerHTML = Cards[id - 1];

    navTabs.forEach(tab => {
        tab.className = 'nav-link';
    });
    
    document.querySelector('#nav' + id).className = 'nav-link active ' + tabColors[id - 1];
}

selectTab(1);
</script>