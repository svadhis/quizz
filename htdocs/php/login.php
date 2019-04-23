<?php

if (isset($_SESSION['registered'])) {
    echo '<div class="alert alert-success" role="alert">
    Vous pouvez maintenant vous connecter !
  </div>';
     unset($_SESSION['registered']);
     include 'php/user_connect.php';
} 
else if (isset($_GET['view']) && $_GET['view'] == 'connect') {
    include 'php/user_connect.php';
}
else if (isset($_GET['view']) && $_GET['view'] == 'register') {
    include 'php/user_register.php';
}
else if ($nickname != '') {
    include 'php/user_connect.php';  
}
else {
    include 'php/user_register.php';
}

