<script>
    let timerQuestion;
    let timerOn = 1;
    let width = 0.1;
    // Timer bar
    function timerBar(s, n) {
        var elem = document.getElementById('myBar');
        width = 0.1;
        if (n === 1) {
            timerOn = 0;
            elem.className = 'bg-secondary';
        }
        var id = setInterval(frame, s);

        function frame() {
            if (width >= 100 || (timerOn === 0 && n === 0)) {
                clearInterval(id);
            } else {
                width += 0.1;
                elem.style.width = width + '%';
                document.querySelector('span#timernumber').innerHTML = '<b>' + Math.ceil(((s * 10) - (width /10 * s)) / 10) + '</b>';
            }
        }
    }
    // Check answer
    function checkAnswer(choice, good) {
        let gameEnded = 0;

        function updateView() {
            return new Promise((resolve, reject) => {
                clearTimeout(timerQuestion);
                let myAnswer = document.querySelector('button#answer' + choice);
                let result = 0;

                for (let i = 0; i < 4; i++) {
                    let answer = document.querySelector('button#answer' + i);
                    if (i === choice) {
                        if (choice === good) {
                            answer.className = "answer btn btn-success";
                            result = 1;
                        } else {
                            answer.className = "answer btn btn-danger";
                        }
                    } else {
                        if (i === good) {
                            answer.className = "answer btn btn-success";
                        } else {
                            answer.className = "answer btn btn-secondary";
                        }
                    }
                    answer.disabled = true;
                }
                return resolve(result);
            })
        }

        updateView()
            .then((result) => {
                fetch(`/php/queries/update_score.php?result=${result}&timer=${width}`)
                    .then(function(response) {
                        return response.text();
                    })
                    .then(function(data) {
                        if (data > 5) {
                            gameEnded = 1;
                        }
                        return data;
                    });
            })
            .then((data) => {
                timerBar(3, 1);
                setTimeout(() => {
                    console.log(gameEnded);
                    if (gameEnded === 0) {
                        document.querySelector('span#timertext').innerHTML = '<b>PROCHAINE QUESTION DANS';
                        setTimeout(() => {
                            location.reload();
                        }, 3700);
                    } else if (gameEnded === 1) {
                        setTimeout(() => {
                            window.location.replace("/php/end_game.php");
                        }, 3700);
                    }
                }, 500);
            });

    }

    // Get question
    fetch(`/php/queries/get_question.php`)
        .then(function(response) {
            return response.text();
        })
        .then(function(data) {
            let actualQuestion = <?= $_SESSION['question'] ?>;
            let question = data.split('|');
            document.querySelector('main').innerHTML = `
        <div id="myProgress" class="mb-4">
            <div class="timer-container">
                <span id="timertext"></span>
                <span id="timernumber"></span>
            </div>
            <div id="myBar" class="bg-warning">
            </div>
        </div>
        <div class="container">
            <div class="row mt-2">
                <div class="col-sm-12 text-center">
                    <h5>${question[0]}</h5>
                </div>
                <div class="col-sm-12 text-center">
                    <h4>Question ${actualQuestion + 1}</h4>
                </div>
                <div class="col-sm-12">
                    <h5>${question[2]}</h5><br>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-6 col-sm-3">
                    <button id="answer0" class="answer btn btn-outline-dark border border-dark" type="button" onclick="checkAnswer(0, ${question[7]});">${question[3]}</button>
                </div>
                <div class="col-6 col-sm-3">
                    <button id="answer1" class="answer btn btn-outline-dark border border-warning" type="button" onclick="checkAnswer(1, ${question[7]});">${question[4]}</button>
                </div>
                <div class="col-6 col-sm-3">
                    <button id="answer2" class="answer btn btn-outline-dark border border-primary" type="button" onclick="checkAnswer(2, ${question[7]});">${question[5]}</button>
                </div>
                <div class="col-6 col-sm-3">
                    <button id="answer3" class="answer btn btn-outline-dark border border-danger" type="button" onclick="checkAnswer(3, ${question[7]});">${question[6]}</button>
                </div>
            </div>
        </div>
        `;

            timerBar(15, 0);

            timerQuestion = setTimeout(() => {
                checkAnswer(10, parseInt(question[7], 10));
            }, 15600);
        })
</script>