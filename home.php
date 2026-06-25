<?php
    include("admin/config.php");
    error_reporting(0);
    session_start();
    ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE-Edge">
    <title>Celestial Path</title>
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
            <div class="home">
                <div class="home-box">
                <video src="images/tacmahal.mp4" muted autoplay loop class="slider active"></video>
                <img src="images/ship.jpg" class="slider" alt="">
                <video src="images/plane.mp4" muted autoplay loop class="slider"></video>
                    <div class="content active" data-aos="fade-up">
                        <h1>India Visit Coming Soon</h1>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed
                            to using 'Content here, content here', making it look like readable English.</p>
                        <a href="travels/tour.php" class="btn">View</a>
                    </div>
                    <div class="content" data-aos="fade-up">
                        <h1>Ocean Travels</h1>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed
                            to using 'Content here, content here', making it look like readable English.</p>
                        <a href="travels.php" class="btn">View</a>
                    </div>
                    <div class="content" data-aos="fade-up">
                        <h1>Quality Transportation Service</h1>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed
                            to using 'Content here, content here', making it look like readable English.</p>
                    </div>
                    
                <div class="slider-navigation">
                    <div class="nav-btn"></div>
                    <div class="nav-btn"></div>
                    <div class="nav-btn"></div>
                </div>
                </div>
                <script>
                    const btns = document.querySelectorAll('.nav-btn');
                    const slides = document.querySelectorAll('.slider');
                    const contents = document.querySelectorAll('.content');
                    var sliderNav = function(index) {
                        btns.forEach((btn) => {
                            btn.classList.remove('active');
                        });
                        slides.forEach((slide) => {
                            slide.classList.remove('active');
                        });
                        contents.forEach((content) => {
                            content.classList.remove('active');
                        });
                        btns[index].classList.add('active');
                        slides[index].classList.add('active');
                        contents[index].classList.add('active');
                    }
                    btns.forEach((btn, i) => {
                        btn.addEventListener('click', () => {
                            sliderNav(i);
                        });
                    });
                </script>
            </div>
        </header>
        <div class="class">
            <section class="seasons">
                <h1 class="heading"><span>Seasonal Tours</span>
                    <hr class="hr">
                </h1>
                <div class="seasons-box" data-aos="fade-up">
                    <div class="season">
                        <div class="season-box">
                            <h2>Summer Tours</h2>
                            <img src="images/morocco.jpg" alt="">
                            <a href="travels.php"><input type='submit' value='View' name='see' class='btn'></a>
                        </div>
                    </div>
                    <div class="season">
                        <div class="season-box">
                            <h2>Spring Tours</h2>
                            <img src="images/csf.jpg" alt="">
                            <a href="travels.php"><input type='submit' value='View' name='see' class='btn'></a>
                        </div>
                    </div>
                    <div class="season">
                        <div class="season-box">
                            <h2>Winter Tours</h2>
                            <img src="images/norway.jpg" alt="">
                            <a href="travels.php"><input type='submit' value='View' name='see' class='btn'></a>
                        </div>
                    </div>
                </div>
            </section><br><br>
            <section class="news">
                <h1 class="heading"><span>Travel Diary</span>
                    <hr class="hr">
                </h1>
                <div class="container" data-aos="fade-up">
                <?php
                    $sorgu = $baglan->query("select * from homepage_tours");
                    while ($satir = $sorgu->fetch_object()) {
                    $resim = substr($satir->resim,3);
                    echo "
                    <div class='box'>
                        <img class='icon' src='$resim' alt=''>
                        <h3>$satir->baslik</h3>
                        <p>$satir->yazi</p>
                    </div>";
                }?>
                </div>
            </section><br><br>
            <section class="works">
                <h1 class="heading"><span>Travels</span>
                    <hr class="hr">
                </h1>
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper" data-aos="fade-up">
                    <?php
                        $sorgu = $baglan->query("select * from homepage_slider");
                        while ($satir = $sorgu->fetch_object()) {
                        $resim = substr($satir->resim,3);
                        echo "
                        <div class='swiper-slide'>
                            <h2>$satir->baslik</h2>
                            <img src='$resim' id='zoom'>
                            <a href='travels.php'><input type='submit' value='View' name='see' class='btn'></a>
                        </div>";}?>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
                <script>
                    var swiper = new Swiper(".mySwiper", {
                        slidesPerView: 3,
                        spaceBetween: 30,
                        freeMode: true,
                        pagination: {
                            el: ".swiper-pagination",
                            clickable: false,
                        },
                        breakpoints: {
                            0: {
                                slidesPerView: 1,
                            },
                            520: {
                                slidesPerView: 2,
                            },
                            950: {
                                slidesPerView: 3,
                            },
                        },
                    });
                </script>
            </section>
        </div>
        <section class="back">
            <h3 class="heading"><span>BOOK A RESERVATION FOR AUSTRALIA TOUR</span></h3>
            <div class="sayim" data-aos="fade-up">
                <div>
                    <p id="days">00</p>
                    <span>Gün</span>
                </div>
                <div>
                    <p id="hours">00</p>
                    <span>Hour</span>
                </div>
                <div>
                    <p id="minutes">00</p>
                    <span>Minute</span>
                </div>
                <div>
                    <p id="seconds">00</p>
                    <span>Second</span>
                </div>
            </div>
            <a href="travels/tour_18.php" class="btn" data-aos="fade-up">View</a>
            <script>
                var countDownDate = new Date("July 10, 2029 00:00:00").getTime();
                var x = setInterval(function() {
                    var now = new Date().getTime();
                    var distance = countDownDate - now;

                    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                    document.getElementById("days").innerHTML = days;
                    document.getElementById("hours").innerHTML = hours;
                    document.getElementById("minutes").innerHTML = minutes;
                    document.getElementById("seconds").innerHTML = seconds;

                    if (distance < 0) {
                        clearInterval(x);
                        document.getElementById("days").innerHTML = "00";
                        document.getElementById("hours").innerHTML = "00";
                        document.getElementById("minutes").innerHTML = "00";
                        document.getElementById("seconds").innerHTML = "00";
                    }

                }, 1000);
            </script>
        </section>
        <footer>
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