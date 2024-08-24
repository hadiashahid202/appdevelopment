<?php
$servername = "localhost";
    $username = "root";
    $password = ""; 
    $dbname = "businessdb";
    $conn  = "";

   
    $conn = mysqli_connect($servername, $username, $password, $dbname);
    $sql  = "SELECT * FROM users;";
    $result  = mysqli_query($conn, $sql);
    $resultCheck   = mysqli_num_rows($result);
    if($resultCheck > 0){
    	while($row   =  mysqli_fetch_assoc($result)){
    		echo $row['email'] . "<br>";
    	}
    }
?>