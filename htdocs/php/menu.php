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
            $myBestScore = 'Meilleur score perso : '.$score['max'];
        }
        else {
            $myBestScore = "Jamais joué";
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
                <form action="php/queries/start_game.php" method="post">
                    <div class="row card-body">

                        <input type="hidden" name="theme" value="<?= $theme['id'] ?>">
                        <div class="col-sm-12">
                            <h4><?=$myBestScore?></h4>
                        </div>
                        <div class="col-sm-12">
                            <button type="submit">Play</button>
                        </div>
                        <div class="col-sm-12">
                            <button type="submit">High scores</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    <?php } ?>

</div>
<form action="php/queries/send_disconnect.php" method="post">
    <div class="row text-center">
        <div class="col-sm-12 mt-4">
            <button type="submit">SE DECONNECTER</button>
        </div>
    </div>
</form>