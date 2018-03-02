<?php
include_once 'dbConnection.php';
ob_start();
$name = $_POST['name'];
$name= ucwords(strtolower($name));

$roll = $_POST['roll'];


$password = $_POST['password'];
$name = stripslashes($name);
$name = addslashes($name);
$name = ucwords(strtolower($name));

$roll = stripslashes($roll);
$roll = addslashes($roll);


$password = stripslashes($password);
$password = addslashes($password);
$password = md5($password);

$q3=mysqli_query($con,"INSERT INTO user VALUES  ('$name','$roll' ,'$password')");
if($q3)
{


header("location:dash.php?q=3");
}
else
{
echo '<script language="javascript">';
echo 'alert("user exist")';
echo '</script>';
}
ob_end_flush();
?>