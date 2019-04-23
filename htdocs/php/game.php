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
                <button class="btn btn-primary" type="button">${question[3]}</button>
            </div>
            <div class="col-sm-12">
                <button class="btn btn-primary" type="button">${question[4]}</button>
            </div>
            <div class="col-sm-12">
                <button class="btn btn-primary" type="button">${question[5]}</button>
            </div>
            <div class="col-sm-12">
                <button class="btn btn-primary" type="button">${question[6]}</button>
            </div>
        </div>
        `;
      })

</script>