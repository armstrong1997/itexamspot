<?php
	require_once("dbConnection.php");
		$firstname=$_POST["fname"];
		$midname=$_POST["mname"];
		$lastname=$_POST["lname"];
		$roll=$_POST["rollno"];
		$mailid=$_POST["user_email"];
		$password=$_POST["user_password"];
		$tpassword=$_POST["user_password"];
		$password = stripslashes($password); 
		$password = addslashes($password);
		$password=md5($password); 
		$year=$_POST["year"];
		$sec= $_POST["sec"];
		$cgpa= $_POST["cgpa"];
		$mobile= $_POST["mobile"];
		$sig= $_POST["sig"];
		
	$qry = "insert into user(name,roll,password,lastname,mailid,year,section,cgpa,mobile,sig,middlename) values('$firstname',$roll,'$password','$lastname','$mailid',$year,'$sec',$cgpa,$mobile,'$sig','$midname')";
		$result =mysqli_query($con,$qry);
		if(!empty($result)) {
	
$to =$mailid ;
$subject ='IT ExampSpot';

 
// To send HTML mail, the Content-type header must be set
$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
 
// Create email headers
$headers .= 'X-Mailer: PHP/' . phpversion();
 
// Compose a simple HTML email message
$message = '<html><body>';
$message .= '<div style="width:600px;background-color:#FFFACD;border-radius:2px">';
$message .= '<h1 style="color:#FFA500;">Hi '.$firstname.',Your registration is success!</h1>';
$message .= '<p style="font-size:18px;">username: '.$roll.'</p>';
$message .= '<p style="font-size:18px;">password: '.$tpassword.'</p>';
$message .= '<p style="font-size:18px;">You can login in itexamspot.cf</p></div>';
$message .= '</body></html>';
 
// Sending email
mail($to, $subject, $message, $headers);

			echo "<script>console.log('success')</script>";
		} else {
		
			echo "<script>console.log('failed')</script>";
		}
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>IT ExamSpot</title>
<link  rel="stylesheet" href="css/bootstrap.min.css"/>
 <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
 <link rel="stylesheet" href="css/main.css">
 <link  rel="stylesheet" href="css/font.css">
 <script src="js/jquery.js" type="text/javascript"></script>

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
<div class="col-md-4">

<a href="register.php" class="pull-right btn sub1" ><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Signup</b></span></a>
</div>
<div class="col-md-1">

<a href="#" class="pull-right btn sub1" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Signin</b></span></a>
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

<div class="col-md-4"></div>
<div class="col-md-4 panel" style="border-radius:15px" ><h1 style="color:green">Registered Successfully</h1>
<h3>Your registration is successfull</h3>
<b><h3>Enjoy IT ExamSpot!</h3></b>
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