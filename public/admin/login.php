<?php
session_start();
if (count($_POST) === 2) {
    $adminEmail = "valentinmont8@gmail.com";
    $adminPassword = '$2y$10$SXW9xjSdKz5NaA0t3eHMiuCSC079NWtEcprWCSlVxuMKfaIgR2lue';
    $errorMessage = 'User or password incorrect !';
    if ($adminEmail === $_POST['email'] && password_verify($_POST['password'], $adminPassword)) {
        $_SESSION['is_logged_in'] = true;
        header('Location: http://'.$_SERVER['HTTP_HOST'].'/admin/index.php');
        exit();

    } 
  
}

?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

    <title>Signin Template for Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="css/login.css" rel="stylesheet">
  </head>

  <body class="text-center">
  </body>
  <div class="container">
<?php 
if((isset($errorMessage))) {
    echo 
    '<div class="col-md-4 mx-auto"> ',
    '<div class="alert alert-danger" role="alert">',
    $errorMessage,
    '</div>',
    '</div>';

}
?>
 

  <form class="form-signin" action="login.php" method="POST">
      <img class="mb-4" src="img/icon.png" alt="" width="100" height="100">
      <h1 class="h3 mb-3 font-weight-normal">Identifiez-vous 👀</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input name="email" type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
    </form>
    </div>
</html>
