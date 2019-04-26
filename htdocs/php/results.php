<?php

// Recuperer et afficher mon dernier score
$req = $bdd->prepare('SELECT * FROM games WHERE id = ?');
$req->execute(array($_SESSION['gameid']));

$response = $req->fetch();

$answers = unserialize($response['answers']);

$themeId = $response['themeId'];

?>

<div class="container">
    <div class="row shadow-lg p-3 mb-5 bg-white rounded">
        <div class="col-12 p-3 mb-2 bg-warning text-dark text-center">
            <h5>Ton score est : <?= $response['score'] ?></h5>
        </div>
        <div class="col-12 offset-md-4 col-md-4 bg-white pt-2">
        <canvas id="myChart" width="400" height="400"></canvas>
        </div>
        <div class="col-12 offset-md-1 col-md-5 d-block p-2">
            <form action="/php/queries/start_game.php" method="post">
                            <input type="hidden" name="theme" value="<?= $themeId ?>">
                            <button class="btn btn-primary btn-lg btn-block" type="submit">Rejouer</button>
                        </form>
        </div>
        <div class="col-12 col-md-5 d-block p-2">
            <form action="/" method="post">
                            <button class="btn btn-danger btn-lg btn-block" type="submit">Retour au menu</button>
                        </form>
        </div>
    </div>
</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>

<script>
    var ctx = document.getElementById('myChart').getContext('2d');

    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Question 1', 'Question 2', 'Question 3', 'Question 4', 'Question 5', 'Question 6'],
            datasets: [{
                label: 'Points ',
                data: [
                    <?= $_SESSION['score'][0] ?>,
                    <?= $_SESSION['score'][1] ?>,
                    <?= $_SESSION['score'][2] ?>,
                    <?= $_SESSION['score'][3] ?>,
                    <?= $_SESSION['score'][4] ?>,
                    <?= $_SESSION['score'][5] ?>
                ],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            legend: {
                display: false
            },
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
</script>

<?php

unset ($_SESSION["endgame"]);
unset ($_SESSION["score"]);
unset ($_SESSION["gameid"]);