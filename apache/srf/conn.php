<?php
$servername = "mysql-con";
$username = "root";
$password = "root";

// Create connection

$conn = mysqli_connect($servername, $username, $password);

// Check connection

if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
else{
echo "Connected successfully";
}

// mysqli_close($conn);

?>