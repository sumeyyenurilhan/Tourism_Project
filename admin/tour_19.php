<?php
    error_reporting(0);
    session_start();
    require_once 'auth_check.php';
    include("config.php");

    $islem = $_GET["islem"];

    if ($islem == "sil") {
        $id = $_GET["id"];
        $sorgu = $baglan->query("delete from tour_19 where (id='$id')");
        echo "<script> window.location.href='tour_19.php'; </script>";
    }

    if ($islem == "ekle") {
        $name = $_POST["name"];
        $image = "image/".$_FILES["image"]["name"];
        move_uploaded_file($_FILES["image"]["tmp_name"], $image);
        $text = $_POST["text"];
        $sorgu = $baglan->query("insert into tour_19 (name,image,text) values ('$name','../$image','$text')");
        echo "<script> window.location.href='tour_19.php'; </script>";
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <?php
        $sirano = 0;
        $sorgu = $baglan->query("select * from tour_19");
        while ($satir = $sorgu->fetch_object()) {
            $sirano++;
        echo "<title>Admin Panel $satir->name</title>"; } ?>
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
        padding: 2rem;
        display: flex;
    }
    tr{
        display: grid;
        grid-template-columns: repeat(5,1fr);
        justify-content: space-between;
        border: var(--border-bg);
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
        font-size: 1rem;
        text-align: center;
    }
    td a{
        background-color: var(--light-bg);
        color: var(--border-bold);
        box-shadow: 0 2px 10px -2px rgba(0, 0, 0, 0.5);
        font-size: 1rem;
        padding: 0.25rem;
        cursor: pointer;
        text-align: center;
    }
    form textarea{
        width: 70%;
        height: 25rem;
        background-color: var(--primary-color);
        border: 1rem;
        border-style: medium;
        border-color: var(--border-bold);
        padding: 1rem;
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
        text-align: center;
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
            <a href="dashboard.php">Home</a><a href="about_us.php">About</a><a href="travels.php" class="active">Travels</a><a href="contact_form.php">Contact</a>
            <a href="logout.php" onclick="if (!confirm('Are you sure you want to log out?')) return false;">Logout</a>
        </div>
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
        $sorgu = $baglan->query("select * from tour_19");
        while ($satir = $sorgu->fetch_object()) {
            $sirano++;
            echo "<tr>
                    <td>$sirano</td>
                    <td>$satir->name</td>
                    <td>$satir->image</td>
                    <td>$satir->text</td>
                    <td><a href='tour_19.php?islem=sil&id=$satir->id'>DELETE</td>
                </tr>";}
        ?>
        </table><br>
        <form action="tour_19.php?islem=ekle" enctype="multipart/form-data" method="post">
            <b>Title</b><hr><br><input type="text" name="name"><br>
            <b>Image</b><hr><br><input type="file" name="image"><br>
            <textarea name="text" type="text" name="text"></textarea><br>
            <input type="submit" value="Save" class="input">
        </form>
    </body>
</html>