<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <title>Travel Packages</title>
    <style>
        /* Add your CSS styles here */
        .package {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px;
            display: inline-block;
            width: 30%;
            text-align: center;
        }
        .icons{
            font-size: 33px;
            color:white;
            margin-top:65px;
        }
        .last{
            background-color: #21004b;
            width:auto;
            height:96px;
            color: white;
        }
.logo{
            height:120px;
            width: 100px;
        }
        .package img {
            max-width: 100%;
            height: auto;
        }
        .textdeign{
            color:#008B8B;
            font-family: Roboto;
            font-weight:bold;
        }
        .align{
            text-align: center;
        }
        .h1{
            color:white;
            font-family:Georgia;
            font-size: 32px;
        }
         .navcolor{
            background-color:#21004b ;/* Set the desired background color */
             /* Set the text color */
        }
        
    </style>
</head>
 <nav class="navbar navbar-expand-lg navcolor">
     <a class="navbar-brand" href="#"><img src="pics/newlogo.png" class="logo"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav m">
                <a class="nav-link active" href="index.html" style="color:white ; font-size: 23px">
                    Home
                    <span class="sr-only">(current)</span>
                </a>
                
                <a class="nav-link" href="Blogs.html" style="color:white ;font-size: 23px">Blogs</a>
                <a class="nav-link" href="login.jsp" style="color:white;font-size: 23px">Logout</a>
                <a class="nav-link" href="#Contact" style="color:white;font-size: 23px">Contact us</a>
            </div>
        </div>
    </nav>
<body>
    <div class="textdeign">
    <h2 style="text-align:center">Travel Packages</h2>
    </div>

    <!-- Package: 3 days -->
    <div class="Container">
        <div class="row">
            <div class="align">
    <div class="package col-lg-3">
        <img src="https://www.bestbus.in/assets/images/news-cms/top_10_places_in_hyderabad4.jpg">
        <h3>Hyderabad</h3>
        <p>Explore exciting destinations in just 3 days. Perfect for a weekend getaway!</p>
        
        <a href="book3.jsp?package=3days">Explore</a>
    </div>

    <!-- Package: 7 days -->
    <div class="package col-lg-3">
        <img src="https://i.pinimg.com/originals/6e/de/59/6ede594cbb21283b7bf5a6209e004a69.jpg">
        <h3>warangal</h3>
        <p>Experience a week of adventure and relaxation in amazing locations.</p>
      
        <a href="book7.jsp?package=7days">Explore</a>
    </div>

    <!-- Package: 15 days -->
    <div class="package col-lg-3">
        <img src="https://myadventurezone.com/wp-content/uploads/2023/06/camping-area-my-adventure-zone-night-camping-in-ananthagiri-hills.png">
        <h3>Vikarabad</h3>
        <p>Embark on a grand tour covering multiple countries and cultures.</p>
        
        <a href="book15.jsp?package=15days">Explore</a>
    </div>

    <!-- Package: 1 month -->
    <div class="package col-lg-3">
        <img src="https://www.holidify.com/images/bgImages/NIZAMABAD.jpg">
        <h3>Nizambad</h3>
        <p>Enjoy a month-long journey filled with unforgettable experiences.</p>
        
        <a href="book1.jsp?package=1month">Explore</a>
    </div>

    <!-- Package: 2 months -->
    <div class="package col-lg-3">
        <img src="https://www.revv.co.in/blogs/wp-content/uploads/2020/05/Road-Trip-from-Visakhapatnam-to-Nallamala-Hills-1280x720.png">
        <h3>Nallamala Forest</h3>
        <p>Embark on a two-month odyssey exploring diverse landscapes and cultures.</p>
    
        <a href="book2.jsp?package=2months">Explore</a>
    </div>

    <!-- Package: 3 months -->
    <div class="package col-lg-3">
        <img src="https://sunrayvillageresort.com/blog/admin/assets/img/post/image_2020-03-16-11-39-24_5e6f656c6f85d.jpg">
        <h3>Vizag</h3>
        <p>For the ultimate adventure, join our three-month expedition.</p>
       
        <a href="book3.jsp?package=3months">Explore</a>
    </div>
            </div>
        </div>
    </div>
        <div id="Contact">
<div class="last" style="text-align:center">
    <h1 class="h1">Contact us</h1>
    <a href="https://www.linkedin.com/in/nouluri-rajashri-a25aa9232/" target="_blank">
    <i class="bi bi-linkedin icons " style="margin-left:12px"></i>
    </a>
    <a href="https://github.com/RAJASHRINOULURI" target="_blank">
    <i class="bi bi-github icons " style="margin-left:12px"></i>
    </a>
</div>
</div>
</body>
</html>
