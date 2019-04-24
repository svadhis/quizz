<?php
session_start();

include 'php/connexion.php';

if (isset($_COOKIE['connected'])) {
    $connected = 1;
} else {
    $connected = 0;
}

if (isset($_SESSION['ingame'])) {
    $inGame = 1;
}
else {
    $inGame = 0;
}

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>DevQuizz</title>

    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <header>

        <nav class="navbar navbar-dark bg-dark mb-2">
            <a class="navbar-brand logo" href="/">DevQuizz</a>
        </nav>

    </header>

    <main>

        <?php include 'php/home.php'; ?>

    </main>

    <footer>

    </footer>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <script src="js/functions.js"></script>

    <script>
        // Activer popover
        $(function() {
            $('[data-toggle="popover"]').popover()
        })

        // Deconnexion
        function disconnect() {
            return new Promise((resolve, reject) => {
                document.cookie = "connected= ; expires = Thu, 01 Jan 1970 00:00:00 GMT";
                resolve();
            }).then(() => {
                location.reload();
            })
        }

        let connected = <?= $connected ?>;
        let inGame = <?= $inGame ?>;
        if (connected === 1) {
            if (inGame == 1) {
                document.querySelector('nav.navbar').innerHTML += `
            <a href="/php/queries/leave_game.php"><i class="material-icons text-white fixed" data-trigger="hover" data-container="body" data-toggle="popover" data-placement="left" data-content="Quitter la partie">exit_to_app</i></a>
            `;
            } else {
                document.querySelector('nav.navbar').innerHTML += `
                <a><i onclick="disconnect();" class="material-icons text-white fixed" data-trigger="hover" data-container="body" data-toggle="popover" data-placement="left" data-content="Déconnexion">exit_to_app</i></a>
            `;

            }
        }
    </script>

</body>

</html>