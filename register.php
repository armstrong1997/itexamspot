<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>IT ExamSpot</title>
<link  rel="stylesheet" href="css/bootstrap.min.css"/>
 <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
 <link rel="stylesheet" href="css/main.css">
 <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/regmain.css">

 <link  rel="stylesheet" href="css/font.css">
 <script src="js/jquery.js" type="text/javascript"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

  <script src="js/bootstrap.min.js"  type="text/javascript"></script>
 	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
<?php if(@$_GET['w'])
{echo'<script>alert("'.@$_GET['w'].'");</script>';}
?>



</head>

<body>
<div class="header">
<div class="row">
<div class="col-lg-6">
<span class="logo">IT ExamSpot</span></div>

<div class="col-md-6">

<a href="index.php" class="pull-right btn sub1" ><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Home</b></span></a>
</div>
<!--sign in modal start-->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content title1">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title title1"><span style="color:orange">Log In</span></h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" action="login.php?q=index.php" method="POST">
<fieldset>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-3 control-label" for="roll"></label>  
  <div class="col-md-6">
  <input  name="roll" placeholder="Enter your username" class="form-control input-md" type="text" required/>
    
  </div>
</div>


<!-- Password input-->
<div class="form-group">
  <label class="col-md-3 control-label" for="password"></label>
  <div class="col-md-6">
    <input id="password" name="password" placeholder="Enter your Password" class="form-control input-md" type="password">
    
  </div>
</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Log in</button>
		</fieldset>
</form>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--sign in modal closed-->

</div><!--header row closed-->
</div>

<div class="bg1">

<div class="row">

<div class="col-md-3"></div>
<div class="col-md-5 panel" style="border-radius:15px" >
<form action="se.php" method="post" ng-app="">
      
        <h1>Registration</h1>
        
        <fieldset>
        <legend>Required info:</legend>
        <label for="firstname">First Name:</label>
        <input type="text" id="fname" name="fname" placeholder="First name" required>
        
        <label for="middlename">Middle Name:</label>
        <input type="text" id="mname" name="mname" placeholder="Middle name">
        
        <label for="lastname">Last Name:</label>
        <input type="text" id="lname" name="lname" placeholder="Initials" required>
          
          <label for="rollno">Roll no:</label>
          <input type="number" id="rollno" name="rollno"  value="<?php if(isset($_POST['rollno'])) echo $_POST['rollno']; ?>" required>
          
          <label for="year">Year:</label>
        <select id="year" name="year" required>
          
            <option value="1">First</option>
            <option value="2">Second</option>
            <option value="3">Third</option>
</select>
           
          <label for="year">Section:</label>
        <select id="sec" name="sec" required>
          
            <option value="A">A</option>
            <option value="B">B</option>
            
</select>
          <label for="cgpa">Current CGPA:</label>
          <input type="number" step="any" id="cgpa" name="cgpa"  required>
          <fieldset>
        <label for="SIG">SIG:</label>
        <select id="sig" name="sig" required>
          
            <option value="networks">Networks</option>
            <option value="robotics">Robotics</option>
            <option value="dataanalytics">Data Mining / Data Analytics</option>
            <option value="webdevelopement">Web Technology</option>
            <option value="iot">IOT</option>
            <option value="mobilecomputing">Mobile Computing</option>
            <option value="softwareengineering">Software Engineering</option>
     </select>
       
         
          <label for="mail">Email:</label>
          <input type="email" id="mail" name="user_email" required>
          <label for="mail">Phone number:</label>
          <input type="text" maxlength="10" id="mobile" name="mobile"  required>
          <label for="password">Password:</label>
          <input type="password" id="password" name="user_password" ng-model="user_password" required>
          
          <label for="password">Retype Password:</label>
          <input type="password" id="password2" name="user_password2" ng-model="user_password2"
        required 
        >

        </fieldset>
        <button type="submit" name="register-user" >Submit</button>
      </form>
      
</div>
</div>
</div>
</div><!--container end-->

<!--Footer start-->
<div class="row footer">
<div class="col-md-4 box">
<p style="font-size:12px;color:orange">&copy BerrySpot&nbsp2018</p>
</div>
<div class="col-md-4 box">
<a href="#" data-toggle="modal" data-target="#login"><b>Admin Login</b></a></div>
<div class="col-md-4 box">
<a href="#" data-toggle="modal" data-target="#developers">Developers</a>
</div>


<div class="modal fade title1" id="developers">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" style="font-family:'typo' "><span style="color:orange">Developers</span></h4>
      </div>
	
      <div class="modal-body">
        <p>
		<div class="row">
		<div class="col-md-4">
		<div class="swingimage">
		 <img src="image/ico.jpg" width=100 height=100 class="img-rounded">
		 </div>
		 </div>
		 <div class="col-md-5">
		  
		<li><span style="color:#202020; font-family:'typo' ; font-size:18px"><b>Armstrong</b></span></li><br>
		<li><span style="color:#202020; font-family:'typo' ; font-size:18px"><b>jerone</b></span></li><br>
	
		
		<h4 style="font-family:'typo';font-size:18px;"><i>KLN college of engineering..</h4></div></div>
		<h5 style="font-family:'typo' ">powered by BerrySpot</h5>
		</p>
     
    
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</div>

<!--Modal for admin login-->
	 <div class="modal fade" id="login">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title"><span style="color:orange;font-family:'typo' ">LOGIN</span></h4>
      </div>
      <div class="modal-body title1">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<form role="form" method="post" action="admin.php?q=index.php">
<div class="form-group">
<input type="number" name="uname" maxlength="20"  placeholder="Admin user id" class="form-control" required/> 
</div>
<div class="form-group">
<input type="password" name="password" maxlength="15" placeholder="Password" class="form-control" required />
</div>
<div class="form-group" align="center">
<input type="submit" name="login" value="Login" class="btn btn-primary" />
</div>
</form>
</div><div class="col-md-4"></div></div>
      </div>
      <!--<div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>-->
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--footer end-->


</body>
</html>