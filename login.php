<?php
session_start();
if(isset($_SESSION["roll"])){
session_destroy();
}
include_once 'dbConnection.php';
$ref=@$_GET['q'];
$roll = $_POST['roll'];
$password = $_POST['password'];

$roll = stripslashes($roll);
$roll = addslashes($roll);
$password = stripslashes($password); 
$password = addslashes($password);
$password=md5($password); 
$result = mysqli_query($con,"SELECT name FROM user WHERE roll = '$roll' and password = '$password'") or die('Error');
$count=mysqli_num_rows($result);
if($count==1){
while($row = mysqli_fetch_array($result)) {
	$name = $row['name'];
}
$_SESSION["name"] = $name;
$_SESSION["roll"] = $roll;
header("location:account.php?q=1");
}
else
header("location:$ref?w=Wrong Username or Password");


?>