<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 
<link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet"> 


 <link href="https://fonts.googleapis.com/css?family=Play" rel="stylesheet"> 
  
 
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <style>
  
   #top li
  {
   padding-right:20px;
   margin:0px;
    font-size: 22px;
  
   color: white;
    
  }

  #top

  {
    
   
    font-family: 'Play', sans-serif;
  }
  
 
  a{
    color: white;
    
  }
   a:hover{
    color: white;
    text-decoration:none;
    
  }
  
  </style>
</head>
<body style="background-color:#f5f6fa  ">

 <nav class="navbar navbar-expand-lg bg-dark navbar-fixed" id="top">

      <a class="navbar-brand" href="#">
          <img src="https://image.flaticon.com/icons/svg/511/511125.svg" alt="logo" style="width:30px; height: 40px;">
        </a>


    <a class="navbar-brand" href="#" style="color:white; font-size: 35px; font-family: 'Play', sans-serif; letter-spacing:0.8px;">Learning</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="navhome">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="navtutorials">Tutorials</a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link" href="user_course_todisplay">Enrolled courses</a>
        </li>
        
        
        <li class="nav-item dropdown" style="padding-right:22px;">
      <a class="nav-link" href="#" id="navbardrop" data-toggle="dropdown"><i class="fa fa-user-plus" style="font-size:20px"></i>
      
       <%= (String)session.getAttribute("user") %>
      </a>
      <div class="dropdown-menu" style="width:100px;">
       <a class="dropdown-item" href="#">Profile</a>
        <a class="dropdown-item" href="navlogout">Logout</a>
       
      </div>
    </li>
    
    
    
      
      </ul>
    </div>  
  </nav>

<br>



<div class="alert alert-danger alert-dismissible fade show" style="border-top:2.5px solid lightgrey">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    <strong>Danger!</strong>  <center><h5>You’re here at our best time  Get Black Friday deals on thousands of courses. Starting at free cost..<br>
    6 days left!   </h5>  </center>
  </div>



<br>
<center>

<div id="demo" class="carousel slide" data-ride="carousel" style=" width: 90%;
height: 40%;  margin-top: -12px;">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://blog.feedspot.com/wp-content/uploads/2017/04/elearning.jpg" alt="Los Angeles" style=" height: 400px; width:90%;">
    </div>
    <div class="carousel-item">
      <img src="https://mk0cloudavegc40cmtia.kinstacdn.com/wp-content/uploads/2013/09/service-catalog.jpg	" alt="Chicago"  style=" height: 400px; width:90%;">
    </div>
    <div class="carousel-item">
      <img src="http://www.insctrs.com/img/~www.insctrs.com/6358793239609906482073345455_studentclub.jpg" alt="New York" style=" height: 400px; width: 90%;">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>   </center>


<br><br>

<div style="width: 100%; padding:5px; background-color:rgb(161, 178, 194)" class="container-fluid">

  <div class="row">  

    <div class="col-sm-3">
    <center>  <img src="https://image.freepik.com/icones-gratis/compras-on-line-de-apoio_318-60118.jpg" style="width: 100px; height: 100px;">  </center>
    </div>


<div class="col-sm-9"><h4 style="margin-top: 8px;">Teach  the world  online and  earn money</h4><br>
  <h6 style="margin: -10px;">Create an online video course, reach students across the globe, and earn money
    </h6></div>

  </div>

  
</div>

<br><br><br>  <hr>

<div class="container-fluid" id="bott">

  <div class="row">

    <div class="col-sm-2"></div>

    <div class="col-sm-8">

      <div class="row">
<div class="col-sm-4">
  <ul>
    <li>Java learning for business</li>
    <li>Become an instructor</li>
    <li>Mobile apps</li>
   
  </ul>
</div>
<div class="col-sm-4">
    <ul>
        <li>About us</li>
        <li>Carrer</li>
        <li>Blog</li>
       
      </ul>

</div>
<div class="col-sm-4"><ul>
    <li>Topics</li>
    <li>Support</li>
    <li>Affiliate</li>
   
  </ul></div>
</div>

</div>

<div class="col-sm-2"></div>


      </div>
    </div>
  <br>
  <br>
  
<div style="background-color:rgb(145, 171, 198)">
  <h5 style="margin-left: 200px; padding-top: 30px;">Java learning</h5>

  <p style="margin-top: -31px; margin-left: 380px; padding-bottom: 25px; " >Copyright @ 2018 Udemy, Inc.</p>
  <p style="margin-top: -67px; margin-left: 890px; padding-bottom: 25px; word-spacing: 13px" >Terms privacy_policy and cookie_policy     Intellectual_property</p>
</div>
  



</body>
</html>
