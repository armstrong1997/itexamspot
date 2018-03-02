 <?php
 include_once 'dbConnection.php';
 $result = mysqli_query($con,"SELECT count(*) as count FROM user where year=3") or die('Error');
while($row = mysqli_fetch_array($result)) {
	$count = $row['count'];
	echo "third year: ".$count;
}
 $result = mysqli_query($con,"SELECT count(*) as count FROM user where year=2") or die('Error');
while($row = mysqli_fetch_array($result)) {
	$count = $row['count'];
	echo "<br>second year: ".$count;
}
 $result = mysqli_query($con,"SELECT count(*) as count FROM user where year=1") or die('Error');
while($row = mysqli_fetch_array($result)) {
	$count = $row['count'];
	echo "<br>first year: ".$count;
}