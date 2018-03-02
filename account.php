<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=1024">

<title>IT ExamSpot</title>
<link  rel="stylesheet" href="css/bootstrap.min.css"/>
 <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
 <link rel="stylesheet" href="css/main.css">
 <link  rel="stylesheet" href="css/font.css">
 <script src="js/jquery.js" type="text/javascript"></script>
   
   <script src="js/bootstrap.min.js"  type="text/javascript"></script>
   <script>    
    if(typeof window.history.pushState == 'function') {
        window.history.pushState({}, "Hide", '<?php echo $_SERVER['PHP_SELF'];?>');
    }
</script>
  <script>
  $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
  </script>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
 <!--alert message-->
<?php if(@$_GET['w'])
{echo'<script>alert("'.@$_GET['w'].'");</script>';}
?>
<!--alert message end-->

</head>
<?php
include_once 'dbConnection.php';
?>

<body>
<div class="header">
<div class="row">
<div class="col-lg-6">
<span class="logo">IT ExamSpot</span></div>
<div class="col-md-3 col-md-offset-1">

<a href="#" class="pull-right btn sub1" data-toggle="modal" data-target="#myModal"><span class="	glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Profile</b></span></a>
</div>
<div class="col-md-2">

 <?php
 include_once 'dbConnection.php';
session_start();
  if(!(isset($_SESSION['roll']))){
header("location:index.php");

}
else
{
$name = $_SESSION['name'];
$roll=$_SESSION['roll'];

include_once 'dbConnection.php';
$q=mysqli_query($con,"SELECT * FROM user WHERE roll='$roll' " )or die('Error139');
while($row=mysqli_fetch_array($q) )
{
$mailid=$row['mailid'];
$mobile=$row['mobile'];
$year=$row['year'];
$section=$row['section'];
$sig=$row['sig'];
}
echo '<a href="logout.php?q=index.php" class="pull-right btn sub1" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Signout</b></span></a>';
}
if(@$_GET['q']== 401) {

  $usig=@$_POST['sig'];
  $umailid=@$_POST['mailid'];
  $fname=$_FILES['resume']['name'];
  $size=$_FILES['resume']['size'];
  $type=$_FILES['resume']['type'];
  $temp=$_FILES['resume']['tmp_name'];
  $link=$_POST['link'];
  move_uploaded_file($temp,"resume/".$fname);
mysqli_query($con,"update user set filename='$fname', status=1 where roll=$roll");
  if($umailid=="")
  {$umailid=$mailid;}
  $umobile=@$_POST['mobile'];
  if($umobile=="")
  {
  $umobile=$mobile;
  }
  $q=mysqli_query($con,"update user set mailid='$umailid', sig='$usig', mobile='$umobile' where roll=$roll" );
  if($q){
    header("location:account.php?q=1");
  }
  //echo "<script>console.log('saved')</script>";
  }
?></div>

</div>

</div></div>
<div class="bg">

<!--navigation menu-->
<nav class="navbar navbar-default title1">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><b>Dashboard</b></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li <?php if(@$_GET['q']==1) echo'class="active"'; ?> ><a href="account.php?q=1"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;Home<span class="sr-only">(current)</span></a></li>
        
      </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav><!--navigation menu closed-->
<div class="container"><!--container start-->
<div class="row">
<div class="col-md-12">

<!--home start-->
<?php if(@$_GET['q']==1) {

$result = mysqli_query($con,"SELECT * FROM quiz ORDER BY date DESC") or die('Error');
echo  '<div class="panel"><table class="table table-striped title1">
<tr><td><b>S.N.</b></td><td><b>Topic</b></td><td><b>Total question</b></td><td><b>Marks</b></td><td></td></tr>';
$c=1;
while($row = mysqli_fetch_array($result)) {
	$title = $row['title'];
	$total = $row['total'];
	$marks = $row['mark'];
   
	$eid = $row['eid'];
$q12=mysqli_query($con,"SELECT score FROM history WHERE eid='$eid' AND roll='$roll'" )or die('Error98');
$rowcount=mysqli_num_rows($q12);	
if($rowcount == 0){
	echo '<tr><td>'.$c++.'</td><td>'.$title.'</td><td>'.$total.'</td><td>'.$marks*$total.'</td>
	<td><b><a href="account.php?q=quiz&step=2&eid='.$eid.'&n=1&t='.$total.'" class="pull-right btn sub1"  style="margin:0px;background:#99cc32"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Start</b></span></a></b></td></tr>';
}
else
{
echo '<tr style="color:#99cc32"><td>'.$c++.'</td><td>'.$title.'&nbsp;<span title="Done" class="glyphicon glyphicon-ok" aria-hidden="true"></span></td><td>'.$total.'</td><td>'.$marks*$total.'</td>
	<td><b><span class="title1"><b>completed</b></span></a></b></td></tr>';
}
}
$c=0;
echo '</table></div>';

}?>

<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content title1">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title title1"><span style="color:orange">Profile</span></h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" enctype="multipart/form-data" action="account.php?q=401" method="post">
<fieldset>


<!-- profile-->
<div class="form-group">
  <label class="col-md-3 control-label" for="roll">roll no:</label>  
  <div class="col-md-6">
  <input  class="form-control input-md" type="text" value=<?php echo $roll; ?> readonly/>
  </div>
</div>

<div class="form-group">
  <label class="col-md-3 control-label" for="name">name:</label>
  <div class="col-md-6">

  <input  class="form-control input-md" type="text" value=<?php echo $name; ?> readonly/>
  </div>
</div>

<div class="form-group">
  <label class="col-md-3 control-label" for="name">Class:</label>
  <div class="col-md-6">
  <input  class="form-control input-md" type="text" value=<?php echo "$year-$section"; ?> readonly/>
  </div>
</div>

<div class="form-group">
  <label class="col-md-3 control-label" for="name">SIG:</label>
  <div class="col-md-6">
        <select id="sig" name="sig">
          
            <option value="networks" <?php if($sig=="networks") echo "selected"; ?> >Networks</option>
            <option value="robotics" <?php if($sig=="robotics") echo "selected"; ?>>Robotics</option>
            <option value="dataanalytics" <?php if($sig=="dataanalytics") echo "selected"; ?>>Data Mining / Data Analytics</option>
            <option value="webdevelopement" <?php if($sig=="webdevelopement") echo "selected"; ?>>Web Technology</option>
            <option value="iot" <?php if($sig=="iot") echo "selected"; ?>>IOT</option>
            <option value="mobilecomputing" <?php if($sig=="mobilecomputing") echo "selected"; ?>>Mobile Computing</option>
            <option value="softwareengineering" <?php if($sig=="softwareengineering") echo "selected"; ?>>Software Engineering</option>
     </select>
  </div>
</div>
<div class="form-group">
  <label class="col-md-3 control-label" for="name">Email:</label>
  <div class="col-md-6">
  <input  name="mailid" class="form-control input-md" type="text" placeholder=<?php echo $mailid; ?> value=""/>
  </div>
</div>
<div class="form-group">
  <label class="col-md-3 control-label" for="name">Mobile no:</label>
  <div class="col-md-6">
  <input  name="mobile" class="form-control input-md" type="text" maxlength="10" value="" placeholder=<?php echo $mobile; ?> />
  </div>
</div>
<div class="form-group">
  <label class="col-md-3 control-label" for="name">Resume:</label>
  <div class="col-md-6">
  		<input type="file" name="resume" id="resume" /></td>
	</div>
</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Update</button>
		</fieldset>
</form>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!--home closed-->

<!--quiz start-->
<?php
$counter =0;
if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) {

$eid=@$_GET['eid'];
$sn=@$_GET['n'];
$total=@$_GET['t'];
$q=mysqli_query($con,"SELECT * FROM questions WHERE eid='$eid' AND sn='$sn' " );
$temp=mysqli_query($con,"SELECT * FROM quiz WHERE eid='$eid'" );
while($rows = mysqli_fetch_array($temp)) {
  $timer = $rows['time'];}
?>

<span style="color:green;font-size:30px">Time left:&nbsp<span id="countdown" class="timer"></span></span>

<script>

var seconds = <?php echo $timer ?>;
    function secondPassed() {
    var minutes = Math.round((seconds - 30)/60);
    var remainingSeconds = seconds % 60;
    if (remainingSeconds < 10) {
        remainingSeconds = "0" + remainingSeconds; 
    }
    document.getElementById('countdown').innerHTML = minutes + ":" +    remainingSeconds;
    if (seconds == 0) {
        clearInterval(countdownTimer);
		document.getElementById('countdown').innerHTML = "Time Up!!";
        document.getElementById("ques").style.display = 'none';
		document.getElementById('sb').innerHTML = "Try Next";
    } else {    
      seconds--;
    }
    }
var countdownTimer = setInterval('secondPassed()', 1000);

function loadUrl(newLocation)
{
  window.location = newLocation;
}

    function userCheated() {
      //$("#quizdisplay").remove();
      seconds=0;
      $("#quizdisplay").html('<div class="panel"><center><h1 class="title" style="color:#660033">You are terminated!!!</h1><center><br /><table class="table table-striped title1" style="font-size:20px;font-weight:1000;"></table></div>');
      setTimeout(function() {
        loadUrl('index.php?send=mail&roll=<?php echo $roll;?>&name=<?php echo $name;?>');
}, 2000);  
      }

window.onblur = userCheated;
  
</script>

<?php
echo '<div id="quizdisplay"><div class="panel" style="margin:5%">';
while($row=mysqli_fetch_array($q) )
{
$qns=$row['qns'];
$qid=$row['qid'];

echo '<b>Question &nbsp;'.$sn.'&nbsp;:<br />'.$qns.'</b><br /><br />';
}
$q=mysqli_query($con,"SELECT * FROM options WHERE qid='$qid' " );
echo '<form action="update.php?q=quiz&step=2&eid='.$eid.'&n='.$sn.'&t='.$total.'&qid='.$qid.'" method="POST"  class="form-horizontal">
<br />';
?>
<span id="ques">
<?php
while($row=mysqli_fetch_array($q) )
{
$option=$row['option'];
$optionid=$row['optionid'];
echo'<input type="radio" name="ans" value="'.$optionid.'" >'.$option.'<br /><br />';
}
?></span>
<?php
echo'<br /><button type="submit" class="btn btn-primary" id="sbutton"><span id="sb">Submit</span></button></form></div></div>';
//header("location:dash.php?q=4&step=2&eid=$id&n=$total");
}
//result display
if(@$_GET['q']== 'result' && @$_GET['eid']) 
{
$eid=@$_GET['eid'];
$q=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' AND roll='$roll' " )or die('Error157');
echo  '<div class="panel">
<center><h1 class="title" style="color:#660033">Thank You For Your Participation</h1><center><br /><table class="table table-striped title1" style="font-size:20px;font-weight:1000;">';
echo '</table></div>';

}
?>
<!--quiz end-->
<?php
//history start
/*if(@$_GET['q']== 2) 
{
$q=mysqli_query($con,"SELECT * FROM history WHERE roll='$roll' ORDER BY date DESC " )or die('Error197');
echo  '<div class="panel title">
<table class="table table-striped title1" >
<tr style="color:red"><td><b>S.N.</b></td><td><b>Quiz</b></td><td><b>Question Solved</b></td><td><b>Right</b></td><td><b>Wrong<b></td><td><b>Score</b></td>';
$c=0;
while($row=mysqli_fetch_array($q) )
{
$eid=$row['eid'];
$s=$row['score'];
$w=$row['wrong'];
$r=$row['mark'];
$qa=$row['level'];
$q23=mysqli_query($con,"SELECT title FROM quiz WHERE  eid='$eid' " )or die('Error208');
while($row=mysqli_fetch_array($q23) )
{
$title=$row['title'];
}
$c++;
echo '<tr><td>'.$c.'</td><td>'.$title.'</td><td>'.$qa.'</td><td>'.$r.'</td><td>'.$w.'</td><td>'.$s.'</td></tr>';
}
echo'</table></div>';
}*/

//ranking start
/*if(@$_GET['q']== 3) 
{
$q=mysqli_query($con,"SELECT * FROM rank  ORDER BY score DESC " )or die('Error223');
echo  '<div class="panel title">
<table class="table table-striped title1" >
<tr style="color:red"><td><b>Rank</b></td><td><b>Name</b></td><td><b>Score</b></td></tr>';
$c=0;
while($row=mysqli_fetch_array($q) )
{
$e=$row['roll'];
$s=$row['score'];
$q12=mysqli_query($con,"SELECT * FROM user WHERE roll='$e' " )or die('Error231');
while($row=mysqli_fetch_array($q12) )
{
$name=$row['name'];
}
$c++;
echo '<tr><td style="color:#99cc32"><b>'.$c.'</b></td><td>'.$name.'</td><td>'.$s.'</td><td>';
}
echo '</table></div>';}*/
?>



</div></div></div></div>
<!--Footer start-->
<div class="row footer">
<div class="col-md-2 box">

<p>
&copy BerrySpot 2018</p>

	  
      </div></div>

<!--Modal for admin login-->
	 

</body>
</html>