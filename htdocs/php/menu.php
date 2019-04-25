<h4 class="text-center">  Choisissez un thème </h4>
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
            $myBestScore = "";
        }

        // Recuperer et afficher les top scores pour chaque theme
        $req3 = $bdd->prepare('SELECT nickname, MAX(score) AS score FROM games 
                                INNER JOIN users ON games.userId = users.id
                                WHERE games.themeId = ? 
                                GROUP BY users.nickname
                                LIMIT 10');
        $req3->execute(array($theme['id']));

        $scores = $req3->fetchAll();

        $topScores = '';

        usort($scores, function ($item1, $item2) {
            return $item2['score'] <=> $item1['score'];
        });

        $i = 1;
        foreach ($scores as $score) {
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

        ?>

        <div class="card">
            <div class="card-header titre-theme" id="heading<?= $theme['id'] ?>">
                <div class="mb-0">
                    <button class="btn btn-link text-decoration-none text-body" type="button" data-toggle="collapse" data-target="#collapse<?= $theme['id'] ?>" aria-expanded="true" aria-controls="collapseOne">
                        <h4><?= $theme['name'] ?></h4>
                    </button>
                </div>
            </div>

            <div id="collapse<?= $theme['id'] ?>" class="collapse" aria-labelledby="heading<?= $theme['id'] ?>" data-parent="#accordionExample">

                <div class="row card-body">
                    <div class="col-12">
                        <h4><?= $myBestScore ?></h4>
                    </div>
                    <div class="col-12 d-block p-2">
                        <form action="php/queries/start_game.php" method="post">
                            <input type="hidden" name="theme" value="<?= $theme['id'] ?>">
                            <button class="btn btn-primary btn-lg btn-block" type="submit">Jouer</button>
                        </form>
                    </div>
                    <div class="col-12 d-block p-2">
                        <button class="btn btn-danger btn-lg btn-block" data-toggle="modal" data-target="#modal<?= $theme['id'] ?>">Meilleurs scores</button>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="modal<?= $theme['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="modal<?= $theme['id'] ?>Label" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title p-3 mb-2 bg-warning text-dark rounded-pill" id="modal<?= $theme['id'] ?>Label"><?= $theme['name'] ?> - Top 10</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <table class="table table-striped">
                                        <tbody>
                                            <?= $topScores ?>
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