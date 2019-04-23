<div class="row">
  <div class="col-sm-12 text-center">
    <ul class="nav nav-pills">
      <li class="nav-item">
        <a class="nav-link nav nav-pills" href="index.php?view=connect">CONNEXION</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active">INSCRIPTION</a>
      </li>
    </ul>
  </div>
</div>

<div class="container">
  <form action="php/queries/send_register.php" method="post">
    <div class="row text-center">
      <div class="col-sm-12 mt-4">
        <input type="text" name="nickname" id="nickname" value="<?= $nickname ?>" placeholder="Pseudo" required>
      </div>
      <div class="col-sm-12 mt-4">
        <input type="password" name="password" id="password" placeholder="Mot de passe" required>
      </div>
      <div class="col-sm-12 mt-4">
        <input type="password" name="confirm_password" id="confirm_password" placeholder="Confirmer le mot de passe" required>
      </div>
      <div class="col-sm-12 mt-4">
        <button class="btn btn-outline-primary" type="submit">S'ENREGISTRER</button>
      </div>
    </div>
  </form>
</div>

<script>

  // Verifier que les deux mots de passe correspondent
  let password = document.getElementById("password");
  let confirm_password = document.getElementById("confirm_password");

  let nickname = document.getElementById("nickname");

  validatePassword();
  validateNickname();

  function validatePassword() {
    if (password.value != confirm_password.value) {
      confirm_password.setCustomValidity("Les mots de passe ne correspondent pas");
    } else {
      confirm_password.setCustomValidity('');
    }
  }

  password.onchange = validatePassword;
  confirm_password.onkeyup = validatePassword;


  // Verifier si le nickname est déjà utilisé dans la base

  function validateNickname() {
    nickname.setCustomValidity('Vérification de la base de données...');
    fetch(`/php/queries/find_nickname.php?nickname=${nickname.value}`)
      .then(function(response) {
        return response.text();
      })
      .then(function(data) {
        if (data === '1') {
          nickname.setCustomValidity("Ce pseudo est déjà utilisé");
        } else {
          nickname.setCustomValidity('');
        }
      });
  }

  nickname.onkeyup = validateNickname;
  nickname.onchange = validateNickname;
  
</script>