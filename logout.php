<?php 
session_start();
if(isset($_SESSION['roll'])){
session_destroy();}
$ref= @$_GET['q'];
header("location:$ref");
?>