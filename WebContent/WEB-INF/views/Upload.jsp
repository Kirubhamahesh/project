<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
     "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  
</head>
<body>

<a style="color:black; padding-top:24px;" href="http://localhost:8081/Spring_demo/WEB-INF/views/Adminuserlogin">c</a>

   <div class="container">
        <h1>Upload the file into database</h1>
        <form method="post" action="doUpload" enctype="multipart/form-data">
           <br><br>
             <h4>Week - 1</h4><br>
           
              <input type="file" name="fileUpload" size="50" />
                    
                    
               <input type="file" name="fileUpload" size="50" />
               
                <input type="file" name="fileUpload" size="50" />
                    
                  
                    
                    <br> <br> <br>
                    
               <h4>Week - 2</h4><br>
               
                   <input type="file" name="fileUpload1" size="50" />
                   
                   <input type="file" name="fileUpload1" size="50" />
                   
                    <input type="file" name="fileUpload1" size="50" />
                    
                      <br> <br> <br>
                    
                          <h4>Week - 3</h4><br>
               
                   <input type="file" name="fileUpload2" size="50" />
                   
                   <input type="file" name="fileUpload2" size="50" />
                   
                    <input type="file" name="fileUpload2" size="50" />
                    
                     
                    
                    
                   
              <input type="submit" value="Upload" />
              
              
              </form>
   </div>
</body>
</html>