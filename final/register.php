<?php
// $servername="localhost";
// $username='root';
// $password="";
// $dbname="login_register";

$conn = new mysqli("localhost", "root","","login_register");

if(!$conn){
    die("Connection Failed:" . mysqli_connect_error());
}
$name=$_POST['name'];
$address=$_POST['address'];
$phone_number=$_POST['phone_number'];
$blood_group=$_POST['blood_group'];
$sql = "INSERT INTO blood_register(name,address,phone_number,blood_group) VALUES ('$name','$address','$phone_number','$blood_group')";

if($conn->query($sql) === TRUE) {
    echo'<script> alert("submitted successfully");
    </script>';
}
else{
    echo"error:" . $conn->error;
}
$conn->close();
?>