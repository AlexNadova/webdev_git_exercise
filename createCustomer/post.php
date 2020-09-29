<?php
// Check if the form is submitted 
if ( isset( $_POST['submit'] ) ) { 
  $server = "localhost";
  $user = "root";
  $password = "root";
  $dbName = "git_exercise";
  
  $conn = new mysqli($server, $user, $password, $dbName);
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  //escape special characters and create valid sql string
  $fname = mysqli_real_escape_string($conn, $_POST['fname']);
  $lname = mysqli_real_escape_string($conn, $_POST['lname']);
  $email = mysqli_real_escape_string($conn, $_POST['email']);
  $phoneNumber = mysqli_real_escape_string($conn, $_POST['phoneNumber']);
  $sql = "INSERT INTO customers (fname, lname, email, phone_number) VALUES ('$fname', '$lname', '$email', '$phoneNumber')";

  $result = $conn->query($sql);
  mysqli_close($conn);

  echo "Success";
  echo "<a href='./index.html'>Go back</a>";
} else echo "Post failed";
?>