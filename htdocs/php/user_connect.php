<div class="row connexion">
  <div class="col-12 offset-md-4 col-md-4">
    <div class="row">
      <div class="col-6 text-center mt-3">
        <a class="btn btn-outline-dark">CONNEXION</a>
      </div>
      <div class="col-6 text-center mt-3">
        <a class="btn btn-outline-dark" href="index.php?view=register">INSCRIPTION</a>
      </div>
    </div>
  </div>
</div>

<div class="container">
  <form action="php/queries/send_connect.php" method="post">
    <div class="row text-center">
      <div class="col-12 mt-4">
        <input class="champPseudo" type="text" name="nickname" id="nickname" value="<?= $nickname ?>" placeholder="Pseudo" required>
      </div>
      <div class="col-12 mt-4">
        <input type="password" name="password" id="password" placeholder="Mot de passe" required>
      </div>
      <div class="col-12 mt-4">
        <input type="hidden" name="userId" id="userId" value="">
        <button class="btn btn-primary" type="submit">SE CONNECTER</button>
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
        if (data === 'no user') {
          nickname.setCustomValidity("Utilisateur non enregistré");
        }
        // Verifier que le mot de passe correspond
        else if (data === 'wrong password') {
          nickname.setCustomValidity('');
          password.setCustomValidity('Mot de passe éronné');
        } else if (data > 0) {
          userId.value = data;
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