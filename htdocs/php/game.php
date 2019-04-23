<div class="container">
</div>

<script>

// Get question
fetch(`/php/queries/get_question.php`)
      .then(function(response) {
        return response.text();
      })
      .then(function(data) {
        let question = data.split(',');
        document.querySelector('.container').innerHTML = `
        <div class="row">
            <div class="col-sm-12">
                <h5>${question[0]}</h5>
            </div>
            <div class="col-sm-12">
                <h4>Question ${question[1] + 1}</h4>
            </div>
            <div class="col-sm-12">
                <h5>${question[2]}</h5>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <button class="btn btn-primary" type="button" onclick="checkAnswer(0, ${question[7]});">${question[3]}</button>
            </div>
            <div class="col-sm-12">
                <button class="btn btn-primary" type="button" onclick="checkAnswer(1, ${question[7]});">${question[4]}</button>
            </div>
            <div class="col-sm-12">
                <button class="btn btn-primary" type="button" onclick="checkAnswer(2, ${question[7]});">${question[5]}</button>
            </div>
            <div class="col-sm-12">
                <button class="btn btn-primary" type="button" onclick="checkAnswer(3, ${question[7]});">${question[6]}</button>
            </div>
            <div class="col-sm-12">
                <form action="/php/queries/leave_game.php" method="post">
                    <button class="btn btn-primary" type="submit">Quitter le quizz</button>
                </form>
                La bonne réponse était ${question[7]}
            </div>
        </div>
        `;
      })

</script>
