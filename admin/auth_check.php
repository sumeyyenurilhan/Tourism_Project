<?php
    if (session_status() === PHP_SESSION_NONE) {
        session_start();
    }

    if (!isset($_SESSION['giris_yapildi']) || $_SESSION['giris_yapildi'] !== true) {
        echo "<script> window.location.href='index.php'; </script>";
        exit();
    }
?>