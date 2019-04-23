

<div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-link text-decoration-none" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
         #1 - HTML
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form action="php/start_game.php" method="post">
      <div class="card-body">
          <input type="hidden" name="theme" value="1">
         <button type="submit">Play</button>
         <button type="submit">Score</button>
      </div>
    </form>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link text-decoration-none" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        #2 - PHP
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
    <form action="php/start_game.php" method="post">
      <div class="card-body">
      <input type="hidden" name="theme" value="3">
      <button type="submit">Play</button>
      <button type="submit">Score</button>
      </div>
    </form>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h2 class="mb-0">
        <button class="btn btn-link text-decoration-none" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          #3 - CSS
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
    <form action="php/start_game.php" method="post">
      <div class="card-body">
      <input type="hidden" name="theme" value="2">
      <button type="submit">Play</button>
      <button type="submit">Score</button>
      </div>
    </form>
    </div>
  </div>
</div>
<div class="card">
    <div class="card-header" id="headingFour">
      <h2 class="mb-0">
        <button class="btn btn-link text-decoration-none" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
        #4 - JS
        </button>
      </h2>
    </div>
    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
    <form action="php/start_game.php" method="post">
      <div class="card-body">
      <input type="hidden" name="theme" value="4">
      <button type="submit">Play</button>
      <button type="submit">Score</button>
    </form>
      </div>
    </div>
  </div>

  <div class="container">
    <form action="php/send_disconnect.php" method="post">
        <div class="row text-center">
            <div class="col-sm-12 mt-4">
                <button type="submit">SE DECONNECTER</button>
            </div>
        </div>
    </form>
</div>
