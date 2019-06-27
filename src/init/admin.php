<?php

// src/init/admin.php

use ValCv\Security\CheckLogin;

require_once(__DIR__.'/../../vendor/autoload.php');

$checkLogin = new CheckLogin();
$checkLogin->check();

?>