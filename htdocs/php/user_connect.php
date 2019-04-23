<div class="row">
    <div class="col-sm-12 text-center">
        <ul class="nav nav-pills">
            <li class="nav-item">
                <a class="nav-link active">CONNEXION</a>
            </li>
            <li class="nav-item">
                <a class="nav-link nav nav-pills" href="index.php?view=register">INSCRIPTION</a>
            </li>
        </ul>
    </div>
</div>

<div class="container">
    <form action="php/queries/send_connect.php" method="post">
        <div class="row text-center">
            <div class="col-sm-12 mt-4">
                <input type="text" name="nickname" id="nickname" value="<?= $nickname ?>" placeholder="Pseudo" required>
            </div>
            <div class="col-sm-12 mt-4">
                <input type="password" name="password" id="password" placeholder="Mot de passe" required>
            </div>
            <div class="col-sm-12 mt-4">
              <input type="hidden" name="userId" id="userId" value="" >
                <button class="btn btn-outline-primary" type="submit">SE CONNECTER</button>
            </div>
        </div>
    </form>
</div>

<script>

  // Verifier si l'utilisateur existe
  let nickname = document.getElementById("nickname");
  let password = document.getElementById("password");
  let userId = document.getElementById("userId");

  let result = 0;

  validateUser();

  function validateUser() {
    fetch(`/php/queries/find_nickname.php?nickname=${nickname.value}&password=${password.value}`)
      .then(function(response) {
        return response.text();
      })
      .then(function(data) {
        result = parseInt(data, 10);
        if (result === 0) {
          nickname.setCustomValidity("Utilisateur non enregistré");
        }
        // Verifier que le mot de passe correspond
        else if (result === 1) {
          nickname.setCustomValidity('');
          password.setCustomValidity('Mot de passe éronné');
        }
        else if (result > 1) {
          userId.value = result;
          nickname.setCustomValidity('');
          password.setCustomValidity('');
        }
      });   
  }

  nickname.onkeyup = validateUser;
  nickname.onchange = validateUser;
  password.onkeyup = validateUser;
  password.onchange = validateUser;

</script>
