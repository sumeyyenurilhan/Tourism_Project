<?php
    error_reporting(0);
    session_start();
    include("config.php");
    require_once 'auth_check.php';
    ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

    $islem = isset($_GET["islem"]) ? $_GET["islem"] : "";

    if ($islem == "sil") {
        $id = $_GET["id"];
        $sorgu = $baglan->query("delete from homepage_tours where (id='$id')");
        echo "<script> window.location.href='homepage_tours.php'; </script>";
    }

    if ($islem == "ekle") {
        $baslik = $baglan->real_escape_string($_POST["baslik"]);
        $resim = "images/".$_FILES["resim"]["name"];
        move_uploaded_file($_FILES["resim"]["tmp_name"], $resim);
        $yazi = $baglan->real_escape_string($_POST["yazi"]);
        $sorgu = $baglan->query("insert into homepage_tours (baslik,resim,yazi) values ('$baslik','../$resim','$yazi')");
        echo "<script> window.location.href='homepage_tours.php'; </script>";
    }
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Admin Panel Home Tours</title>
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
    a{
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
    a:hover{
        background-color: var(--border-bg);
        color: var(--primary-color);
    }
    h3{
        margin-top: 2rem;
        color: var(--border-bg);
        text-align:center;
    }
    .active{
        background-color: var(--border-bg);
        color: var(--primary-color);
    }
    form{
        align-items: center;
        width: 100rem;
        margin: 5rem 5rem;
    }
    table{
        border-collapse: collapse;
        width: 100%;
        justify-content: space-between;
        background-color: var(--primary-color);
        border: var(--border-bold);
        border-width: medium;
        color: var(--border-bold);
    }
    tr{
        display: grid;
        grid-template-columns: repeat(5,1fr);
        border: var(--border-bold);
        border-width: medium;
        text-align: center;
        margin-bottom: 1rem;
    }
    th{
        font-size: 2rem;
        color: var(--border-bg);
    }
    td{
        color: var(--border-bold);
    }
    td a{
        background-color: var(--light-bg);
        color: var(--border-bold);
        text-align: center;
        box-shadow: 0 2px 10px -2px rgba(0, 0, 0, 0.5);
        font-size: 1rem;
        padding: 0.25rem;
        margin: 2rem 1rem;
        cursor: pointer;
        text-decoration:none;
    }
    form input{
        background-color: var(--primary-color);
        color: var(--border-bold);
        box-shadow: 0 2px 10px -2px rgba(0, 0, 0, 0.5);
        font-size: 2rem;
        border: var(--border-bold);
        border-width: medium;
        padding: 1rem 1rem;
        margin: 2rem 2rem;
        cursor: pointer;
        padding: 0.5rem 1rem;
        margin-top: 1rem;
    }
    .input{
        background-color: var(--light-bg);
        color: var(--border-bold);
        text-align: center;
        box-shadow: 0 2px 10px -2px rgba(0, 0, 0, 0.5);
        font-size: 1rem;
        padding: 1rem;
        margin: 2rem 1rem;
        cursor: pointer;
        text-decoration:none;
    }
    .input:hover{
        background-color: var(--border-bg);
        color: var(--primary-color);
    }
    form b{
        font-size: 2rem;
    }
    </style>
    </head>
    <body>
        <div style="text-align:center;">
            <a href="dashboard.php">Home</a><a href="about_us.php">About</a><a href="travels.php">Travels</a><a href="contact_form.php">Contact</a>
            <a href="logout.php" onclick="if (!confirm('Are you sure you want to log out?')) return false;">Logout</a>
        </div>
        <br><hr><br>
        <div style="text-align:center;">
            <a href="homepage_tours.php" class="active">Travels Diary</a><a href="homepage_slider.php">Travels Links</a>
        </div>
        <h3>PLEASE SELECT FROM THE MENU.</h3>
        <br><hr><br>
    <table>
            <tr>
                <th>SERIAL NUMBER</th>
                <th>TITLE</th>
                <th>IMAGE</th>
                <th>CONTENT</th>
                <th>DELETE</th>
            </tr>
        <?php
        $sirano = 0;
        $sorgu = $baglan->query("select * from homepage_tours");
        while ($satir = $sorgu->fetch_object()) {
            $sirano++;
            echo "<tr>
                <td>$sirano</td>
                <td>$satir->baslik</td>
                <td>$satir->resim</td>
                <td>$satir->yazi</td>
                <td><a href='homepage_tours.php?islem=sil&id=$satir->id' class='a'>DELETE</td>
                </tr>";
        }
        ?>
        </table><br>
        <form action="homepage_tours.php?islem=ekle" enctype="multipart/form-data" method="post">
            <b>Title</b><hr><br><input type="text" name="baslik"><br>
            <b>Image</b><hr><br><input type="file" name="resim"><br>
            <b>Content</b><hr><br><input type="text" name="yazi"><br>
            <input type="submit" value="Save" class="input">
        </form>
</body>
</html>