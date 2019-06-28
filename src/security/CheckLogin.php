<?php

// src/Security
namespace ValCv\Security;

class CheckLogin
{
    public function __construct()
    {
        session_start();
    }

    public function check(): void
    {
        if (!isset($_SESSION['is_logged_in']) 
            || $_SESSION['is_logged_in'] === false
        ) {
            header('Location: http://portfolio.local/admin/login');
            exit();
        }
    }
}
?>
