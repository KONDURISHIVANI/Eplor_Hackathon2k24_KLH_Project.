<%-- 
    Document   : blog
    Created on : 16-Mar-2024, 10:42:59 pm
    Author     : RAJASHRI
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
  <head>
    
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    
    <style>
        .login{
            color:#FFFFFF;
            font-family:Georgia;
            text-align:right;
        }
        .card1{
            height:850px;
            width: 1200px;
            margin-top: 93px;
            margin-left: 150px;
            
        }
        .card2{
            height:750px;
            width: 1100px;
            margin-bottom: 233px;
            margin-left: 150px;
            
        }
       
        .para{
            color:green;
            font-family:Georgia;
            padding: 12px;
            font-size: 24px;
           
        }
        .head{
            color:black;
            font-family:Georgia;
            padding: 12px;
            font-size: 37px;
            
        }
        .text
        {
            text-align: left;
        }
        .logo{
            height:120px;
            width: 100px;
        }
        .last{
            background-color: #21004b;
            width:auto;
            height:96px;
        }
        .icons{
            font-size: 33px;
            color:white;
            margin-top:65px;
        }
        .h1{
            color:white;
            font-family:Georgia;
            font-size: 32px;
        }
        .size{
            font-size: 23px;
        }
        .carousel {
            border-radius: 5px; /* Adjust the radius as needed */
            overflow: hidden; 
            /* Ensure content within the rounded corners is visible */
        }
        .navcolor{
            background-color:#21004b ;/* Set the desired background color */
             /* Set the text color */
            
        }
        .video-cards {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}

.video-cards{ 
   margin-bottom: 20px;
   margin-left:30px;
    border: 1px solid #ccc;
    border-radius: 5px;
    overflow: hidden;
  width: 400px; /* Adjust the width as per your requirement */
  height: 200px; /* Adjust the height as per your requirement */
}


.card-thumbnail video {
    width: 100%;
}

.card-content {
    padding: 10px;
}

.card-content h2 {
    margin-top: 0;
}

.card-content p {
    margin-bottom: 0;
}

.blog-content {
    margin-top: 30px;
}

.blog-content h2 {
    margin-bottom: 10px;
}
.book-button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            cursor: pointer;
            margin-left: 700px;
        }

        .book-button:hover {
            background-color: #0056b3;
        }
        
</style>
</head>
 
  <body>
      <nav class="navbar navbar-expand-lg navcolor">
     <a class="navbar-brand" href="#"><img src="pics/newlogo.png" class="logo"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav m">
                <a class="nav-link active size" style="color:white" href='index.html'>
                    LogOut
                </a>
                <a class="nav-link size" style="color:white" href='welcome.jsp'>ContactUs</a>
                 <a class="nav-link size" style="color:white" href='welcome.jsp'>Home Page</a>

    
            </div>
        </div>
    </nav>
  
    <c:forEach items="${posts}" var="post">
        <h2>${post.title}</h2>
        <p>${post.description}</p>
    </c:forEach>
  <div class="d-flex flex-row">
    <div class="video-cards">
        <div class="card">
    <div class="card-thumbnail">
        <iframe width="100%" height="auto" src="https://www.youtube.com/embed/LqI8RLS9PpE" frameborder="0" allowfullscreen></iframe>
    </div>
    <div class="card-content">
        <h2>Experience 1</h2>
        
    </div>
</div>
    </div>   
   
   
   
    <div class="video-cards">
        <div class="card">
    <div class="card-thumbnail">
        <iframe width="100%" height="auto" src="https://www.youtube.com/embed/f90VPsXsZZM?si=Vo6G3Xnunub93N7u" frameborder="0" allowfullscreen></iframe>
    </div>
    <div class="card-content">
        <h2>Experience 2</h2>
      
    </div>
</div>
    </div>   
      <div class="video-cards">
        <div class="card">
    <div class="card-thumbnail">
        <iframe width="100%" height="auto" src="https://www.youtube.com/embed/mq9v1SBgHqM?si=d5k_cv7jFEuTjirg" frameborder="0" allowfullscreen></iframe>
    </div>
    <div class="card-content">
        <h2>Experience 3</h2>
      
    </div>
</div>
    </div>   
      <div class="video-cards">
        <div class="card">
    <div class="card-thumbnail">
        <iframe width="100%" height="auto" src="https://www.youtube.com/embed/LqI8RLS9PpE" frameborder="0" allowfullscreen></iframe>
    </div>
    <div class="card-content">
        <h2>Experience 4</h2>
      
    </div>
</div>
    </div>   
      </div>
  
  
  <div class="d-flex flex-column">
      <p> One of the best place nearby Hyderabad city to enjoy nature and the view of Hyderabad city from a higher point. Parking is available but the way to climb is very steep and its a single road, so if going on a 4 wheeler be alert. There is a small temple at top. The view from top is amazing. You can enjoy the ORR view point. Take your own food and drink, there isn't any shop nearby. Best time to visit is sunrise or sunset. Once the night falls , police comes and they send everyone away.</p>
      <P>Not many options are available to explore other than the wonderful hilly terrain which you can trek and relax with the ORR view.

      <p>Hanuman temple is very peaceful as well along the statue is pleasant.

For picnic, do carry a carpet and your favourite home cooked items and don’t forget carrying water.</p>

      <p>You can setup your picnic spot if large groups below the car park area else if small groups, you can plan closer to the radio tower.</p>
  </div>
  
  
  <a href="CustomerDetails.jsp" >  <button class="book-button">Book Now</button></a>
  
  
   
   
   
    
  </body>
</html>
