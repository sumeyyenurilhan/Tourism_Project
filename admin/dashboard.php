<?php
    include("config.php");
    require_once 'auth_check.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Admin Panel Dashboard</title>
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
            <a href="dashboard.php" class="active">Home</a><a href="about_us.php">About</a><a href="travels.php">Travels</a><a href="contact_form.php">Contact</a>
            <a href="logout.php" onclick="if (!confirm('Are you sure you want to log out?')) return false;">Logout</a>
        </div>
        <br><hr><br>
        <div style="text-align:center;">
            <a href="homepage_tours.php">Travel Diary</a><a href="homepage_slider.php">Travel Links</a>
        </div>
        <h3>PLEASE SELECT FROM THE MENU.</h3>
        <br><hr><br>
    </body>
</html>