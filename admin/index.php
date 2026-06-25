<?php
    session_start();
    include("config.php");

    if($_POST) {
        $kullanici = $baglan->real_escape_string($_POST["kullanici"]);
        $sifre = $baglan->real_escape_string($_POST["sifre"]);
        $sorgu = $baglan->query("SELECT * FROM user WHERE (kullanici='$kullanici' && sifre='$sifre')");
        $kayitsay = $sorgu->num_rows;

        if ($kayitsay > 0) {
            // ✅ BUNU EKLEDİK — oturumu işaretle
            $_SESSION['giris_yapildi'] = true;
            $_SESSION['kullanici'] = $kullanici;

            echo "<script> window.location.href='dashboard.php'; </script>";
        } else {
            echo "<script> alert('INCORRECT USER INFORMATION!'); 
            window.location.href='index.php'; </script>";
        } 
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Admin Panel Login</title>
    <style>
        
    :root {
    --primary-color: #eee;
    --secondary-color: #000;
    --border-bg: #24031b;
    --light-bg: #65084c;
    --border-bold: #000000;
    --border-light: #ffffff;
}
    body{
        font-family: 'Rubik', sans-serif;
        alighn-items: center;
        justify-content: center;
    }
    body b{
        color: var(light-bg);
        font-size: 2rem;
    }
    body form{
        margin-top: 10rem;
    }
    body input{
        width: 15rem;
        height: 2rem;
        border: 1px solid var(--border-bg);
        background-color: var(--light-bg);
        color: var(--primary-color);
    }
    body form .button{
        background-color: var(--light-bg);
        border-color: var(--border-bg);
        width: 10rem;
        height: 2rem;

    }
    body form .button:hover{
        background-color: var(--border-bg);
        color: var(--primary-color);
    }
    </style>
    </head>
    <body>
        <form action="" method="post" style="text-align:center;">
            <b>User Name</b><br>
            <input type="text" name="kullanici" required><br>
            <b>Password</b><br>
            <input type="password" name="sifre" required><br><br>
            <input type="submit" value="Login" class="button">
        </form>
    </body>
    
</html>