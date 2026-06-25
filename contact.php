<?php
    include("admin/config.php");

    if(isset($_POST['send'])){
        $name = mysqli_real_escape_string($baglan, $_POST['name']);
        $email = mysqli_real_escape_string($baglan, $_POST['email']);
        $number = mysqli_real_escape_string($baglan, $_POST['number']);
        $msg = mysqli_real_escape_string($baglan, $_POST['message']);

        $select_message = mysqli_query($baglan, "SELECT * FROM `contact_form` WHERE name = '$name' AND email = '$email' AND number = '$number' AND message = '$msg'") or die('query failed');

        if(mysqli_num_rows($select_message) > 0){
            $message[] = 'message is being sent!';
        }else{
            mysqli_query($baglan, "INSERT INTO `contact_form`(name, email, number, message) VALUES('$name','$email','$number','$msg')") or die('query failed');
            $message[] = 'Message sent successfully!';
        }
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE-Edge">
    <title>Contact</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <script src="lib/js/jquery.min.js"></script>
    <script src="lib/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="hero">
        <header class="header">
            <nav class="nav">
                <a href="home.php" aria-label="home"><img src="images/logo.png" class="logo" alt="" width="200"></a>
                <ul class="dropdown">
                    <li><a><img src="images/bar.png" class="bar"></a>
                        <ul>
                            <li><a href="home.php" class="active">Home</a></li>
                            <li><a href="about1.php">About</a></li>
                            <li><a href="travels.php">Travels</a></li>
                            <li><a href="contact.php">Contact</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </header>
        <div class="high1">
            <div class="class1">
                <section class="contact" id="contact" data-aos="fade-up">
                    <form method="post">
                        <div class="flex">
                            <input type="text" name="name" placeholder="Enter your name" class="box" required>
                            <hr class="hr1">
                            <input type="email" name="email" placeholder="Enter your email address" class="box" required>
                            <hr class="hr1">
                        </div>
                        <input type="number" min="0" name="number" placeholder="Enter your phone number" class="box" required>
                        <hr class="hr1">
                        <textarea name="message" class="box" required placeholder="Write your message" cols="10" rows="6"></textarea>
                        <hr class="hr1"><br>
                        <input type="submit" value="Send Message" name="send" class="btn1">
                    </form>
                </section>
            <?php
            if(isset($message)){
                foreach($message as $message){
                echo'
                <div class="message">
                    <span>'.$message.'</span>
                    <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
                </div>
                ';
                }
            }
            ?>
            </div>
        </div><footer>
            <div class="container" data-aos="fade-up">
                <div class="ek" id="ek">
                    <h3>Quick Links</h3>
                    <div><a href="home.php">Home</a></div>
                    <div><a href="about1.php">About</a></div>
                    <div><a href="travels.php">Travels</a></div>
                    <div><a href="contact.php">Contact</a></div>
                </div>
                <div class="ek" id="ek">
                    <h3>Travels</h3>
                    <div><a href="travels.php">Domestic Tours</a></div>
                    <div><a href="travels.php">International Tours</a></div>
                    <div><a href="travels.php">Season Tour</a></div>
                    <div><a href="travels.php">Ship Tours</a></div>
                </div>
                <div class="ek" id="ek">
                    <h3>Contact</h3>
                    <div>
                        <a href="#"><i class="fas fa-phone"></i>+0213-589-74-10</a>
                    </div>
                    <div>
                        <a href="#" class="lower"><i class="fas fa-envelope"></i>celestialpath@gmail.com</a>
                    </div>
                </div>
                <div class="ek">
                    <h3>Social Media</h3>
                    <div class="social_icon">
                        <div>
                            <a><i class="fab fa-facebook-f"></i></a>

                            <a><i class="fab fa-instagram"></i></a>

                            <a><i class="fab fa-twitter"></i></a>

                            <a><i class="fab fa-youtube"></i></a>
                        </div>
                    </div>

                </div>
            </div>
            <hr class="hr">
            <p>Celestial Path | 2023</p>
        </footer>
    </div>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
        AOS.init({
            duration: 3000,
            once: true,
        });
    </script>
    <script src="lib/js/jquery.min.js"></script>
    <script src="lib/js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
</body>

</html>