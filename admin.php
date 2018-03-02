<?php
include_once 'dbConnection.php';
$ref=@$_GET['q'];
$roll = $_POST['uname'];
$password = $_POST['password'];

$roll = stripslashes($roll);
$roll = addslashes($roll);
$password = stripslashes($password); 
$password = addslashes($password);
$result = mysqli_query($con,"SELECT roll FROM admin WHERE roll = '$roll' and password = '$password'") or die('Error');
$count=mysqli_num_rows($result);
if($count==1){
session_start();
if(isset($_SESSION['roll'])){
session_unset();}
$_SESSION["name"] = 'Admin';
$_SESSION["key"] ='armstrong';
$_SESSION["roll"] = $roll;
header("location:dash.php?q=0");
}
else header("location:$ref?w=Warning : Access denied");
?>