
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>AddManager</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <style>
        @media(min-width: 768px) {
            .field-label-responsive {
              padding-top: .5rem;
              text-align: right;
            }
          }
    </style>

</head>

<body>

<br><br>
       <div class="container ">

          <form:form action="display" method="get" modelAttribute="courseob" >
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <h2>Enroll Course details</h2>
                        <hr>
                    </div>
                </div>
                
                <br>
                
                <div class="row">
                    <div class="col-md-3 field-label-responsive">
                        <label for="name">Course Name</label>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-user"></i></div>
                               <input type="text" name="fileName" class="form-control"  placeholder="Java Spring">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-control-feedback">
                                <span class="text-danger align-middle">
                                    <!-- Put name validation error messages here -->
                                </span>
                        </div>
                    </div>
                </div>
                
                
                
                   <div class="row">
                    <div class="col-md-3 field-label-responsive">
                        <label for="password">Enter Course id</label>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group has-danger">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-key"></i></div>
                                <input type="text" name="id" class="form-control"  placeholder="start with course_">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-control-feedback">
                                <span class="text-danger align-middle">
                                    
                                </span>
                        </div>
                    </div>
                </div>
                
                
           
              
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <button type="submit" class="btn btn-primary"> <i class="fa fa-user-plus"></i>Confirm</button> 
                    </div>
                </div>
                
                
            </form:form>
        
</body>

</html>