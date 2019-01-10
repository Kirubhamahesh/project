<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="net.codejava.fileupload.model.UploadFile " %>   
         <%@ page import="java.util.*" %>
         
         <%! long str22; %>
         
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
  
  td
  {
  
  border:1.5px solid black;
  }
  
  </style>
</head>
<body style="background-color:#f5f6fa  ">

 <nav class="navbar navbar-expand-lg bg-dark navbar-fixed" id="top">

      <a class="navbar-brand" href="#">
          <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN2QF6KLkxRaLuicYlHewmqV7jcT7Yz8FYv4tW7T_6WyXCPbfSuw" alt="logo" style="width:30px; height: 40px;">
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
          <a class="nav-link" href="user_course_todisplay">Register</a>
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
<br><br>
         
<div class="container-fluid">

<div class="row">

<div class="col-sm-3">

<table class="table" style="border:2px solid black">
    <thead class="thead-dark">
      <tr>
        <th style="text-align:center; font-size:22px">Week one tutorials</th>     
 </tr> </thead><tbody><tr>  <td >
      
<%



ArrayList<UploadFile> pdf=(ArrayList<UploadFile>)request.getAttribute("pdf_ob");

for(UploadFile temp:pdf)
{ 
	if(temp.getFileName().contains("week1"))
	{ String str=(String)temp.getFileName();
	%>
	<h6 style="padding:7px;"><a style="color:black; padding-top:24px;" href="http://localhost:8081/Filedynamic/displaypdf?id=<%=temp.getId()%>"><%= str.substring(11) %></a></h6>
<%
    }

}

%>

</td ></tr></tbody></table>

<br>

<table class="table" style="border:0.2px solid black">
    <thead class="thead-dark">
      <tr>
        <th style="text-align:center; font-size:22px">Week two tutorials</th>      
 </tr> </thead><tbody><tr>  <td>
      
<%


for(UploadFile temp:pdf)
{ 
	if(temp.getFileName().contains("week2"))
	{
		String str=(String)temp.getFileName();
	%>
		<h6 style="padding:7px;"><a style="color:black; padding-top:24px;" href="http://localhost:8081/Filedynamic/displaypagef2?id=<%=temp.getId()%>"><%= str.substring(10) %>		</a></h6>

</td></tr></tbody></table>


 <% 
    
   str22=temp.getId();
    
    %>



</div>

<div class="col=sm-4"></div>

<div class="col=sm-5">
   
  
</div>

</div>

</div>
<%
    }

}

%>


</body>
</html>