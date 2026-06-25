<?php
    session_start();
    include("config.php");
    require_once 'auth_check.php';

    if ($_POST) {
        $aciklama = $baglan->real_escape_string($_POST["aciklama"]);
        $sorgu = $baglan->query("delete from about_us_2");
        $sorgu = $baglan->query("insert into about_us_2 (aciklama) values ('$aciklama')");
        echo "<script> window.location.href='about_us_2.php'; </script>";
    }

    $sorgu = $baglan->query("select * from about_us_2");
    $satir = $sorgu->fetch_object();
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Admin Panel About Us</title>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600&display=swap');
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
    }
    div a{
        background-color: var(--light-bg);
        color: var(--border-bold);
        text-align: center;
        box-shadow: 0 2px 10px -2px rgba(0, 0, 0, 0.5);
        font-size: 1rem;
        padding: 1rem 1rem;
        margin: 2rem 1rem;
        cursor: pointer;
        text-decoration:none;
    }
    div a:hover{
        background-color: var(--border-bg);
        color: var(--primary-color);
    }
    form{
        align-items: center;
        height: 30rem;
        width: 100rem;
        margin: 2rem 6rem;
    }
    form input{
        background-color: var(--light-bg);
        color: var(--pink);
        box-shadow: 0 2px 10px -2px rgba(0, 0, 0, 0.5);
        font-size: 2rem;
        cursor: pointer;
        text-decoration:none;
        border: none;
        padding: 0.5rem 1rem;
    }
    form input:hover{
        background-color: var(--border-bg);
        color: var(--primary-color);
    }
    form b{
        font-size: 2rem;
    }
    form textarea{
        width:70%;
        height: 25rem;
        background-color: var(--primary-color);
        border: 1rem;
        border-style: medium;
        border-color: var(--border-bold);
        padding: 1rem;
    }
    h3{
        margin-top: 2rem;
        color: var(--border-bold);
        text-align:center;
    }
    .active{
        background-color: var(--border-bg);
        color: var(--primary-color);
    }
    </style>
    </head>
    <body>
    <div style="text-align:center;">
            <a href="dashboard.php">Home</a><a href="about_us.php" class="active">About</a><a href="travels.php">Travels</a><a href="contact_form.php">Contact</a>
            <a href="logout.php" onclick="if (!confirm('Are you sure you want to log out?')) return false;">Logout</a>
        </div>
        <br><hr><br>
        <div style="text-align:center;">
            <a href="about_us_1.php">Our Vision and Mission</a><a href="about_us_2.php" class="active">Travel Guide</a><a href="about_us_3.php">Requirements</a>
        </div>
        
        <h3>PLEASE SELECT FROM THE MENU.</h3>
        <br><hr><br>
        <form action="" method="post">
            <b>CONTENTS</b><br><br>
            <textarea name="aciklama"><?php echo $satir->aciklama; ?></textarea>
            <br><br>
            <input type="submit" value="Save">
        </form>
    </body>
</html>