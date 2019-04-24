<div class="accordion" id="accordionExample">

    <?php

    // Template de selection des themes
    $req = $bdd->query('SELECT * FROM themes');

    while ($theme = $req->fetch()) {

        // Recuperer et afficher le meilleur score perso
        $req2 = $bdd->prepare('SELECT MAX(score) AS max FROM games WHERE userId = ? AND themeId = ?');
        $req2->execute(array($_COOKIE['userId'], $theme['id']));

        $score = $req2->fetch();
        $myBestScore = '';

        if ($score['max']) {
            $myBestScore = 'Meilleur score perso : ' . $score['max'];
        } else {
            $myBestScore = "Aucune partie";
        }

        // Recuperer et afficher les top scores pour chaque theme
        $req3 = $bdd->prepare('SELECT * FROM games 
                                INNER JOIN users ON games.userId = users.id
                                WHERE games.themeId = ? ORDER BY games.score DESC LIMIT 10');
        $req3->execute(array($theme['id']));

        $topScores = '';
        
        $i = 1;
        while ($score = $req3->fetch()) {
            $isTop = '';
            if ($score['nickname'] == $_COOKIE['nickname']) {
                $isTop = 'text-danger font-weight-bold';
            }
            $topScores = $topScores.'<tr class="'.$isTop.'">
                            <th scope="row">'.$i.'</th>
                            <td>'.$score['nickname'].'</td>
                            <td>'.$score['score'].'</td>
                        </tr>';
            $i++;
        }

        ?>

        <div class="card">
            <div class="card-header" id="heading<?= $theme['id'] ?>">
                <h2 class="mb-0">
                    <button class="btn btn-link text-decoration-none" type="button" data-toggle="collapse" data-target="#collapse<?= $theme['id'] ?>" aria-expanded="true" aria-controls="collapseOne">
                        #<?= $theme['id'] ?> - <?= $theme['name'] ?>
                    </button>
                </h2>
            </div>

            <div id="collapse<?= $theme['id'] ?>" class="collapse" aria-labelledby="heading<?= $theme['id'] ?>" data-parent="#accordionExample">

                <div class="row card-body">
                    <div class="col-12">
                        <h4><?= $myBestScore ?></h4>
                    </div>
                    <div class="col-6">
                        <form action="php/queries/start_game.php" method="post">
                            <input type="hidden" name="theme" value="<?= $theme['id'] ?>">
                            <button class="d-inline-block btn btn-success" type="submit">Jouer</button>
                        </form>
                    </div>
                    <div class="col-6">
                        <button class="d-inline-block btn btn-warning float-right" data-toggle="modal" data-target="#modal<?= $theme['id'] ?>">Meilleurs scores</button>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="modal<?= $theme['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="modal<?= $theme['id'] ?>Label" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="modal<?= $theme['id'] ?>Label"><?= $theme['name'] ?> - Top 10</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <table class="table table-striped">
                                        <tbody>
                                            <?=$topScores?>
                                        </tbody>
                                    </table>
                                </div>
 
                  
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>

    <?php } ?>

</div>