<?php
    $servername = "localhost";
    $username = "root";
    $password = ""; 
    $dbname = "businessdb";
    $conn  = "";

    try{
        $conn = mysqli_connect($servername, $username, $password, $dbname);
    }
    catch(mysqli_sql_exception){
        echo "you are not registered";
    }

    if($_SERVER["REQUEST_METHOD"] == "POST") {
        $name = $_POST['name'];
        $email = $_POST['email'];
        $subject = $_POST['subject'];
        $message = $_POST['message'];
        
        if(empty($name)){
            echo "plz enter you name";
        }
        elseif(empty($email)){
            echo "plz enter you email";
        }
        elseif(empty($subject)){
            echo "plz fill the subject field";
        }
        elseif(empty($message)){
            echo "plz write something";
        }
        else{
            $sql = "INSERT INTO users (name, email, subject, message) VALUES ('$name','$email',' $subject','$message')";
            try{
            mysqli_query($conn, $sql);
            echo "now you are registered";
            }
            catch(mysqli_sql_exception){
            echo "you are not registered";
            }
        }
    }
    mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Form</title>
</head>
<body>
    <h2>Contact Us</h2>
    <form action="<?php htmlspecialchars($_SERVER["PHP_SELF"]) ?>" method="POST">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" ><br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" ><br><br>
        
        <label for="subject">Subject:</label>
        <input type="text" id="subject" name="subject"><br><br>
        
        <label for="message">Message:</label>
        <textarea id="message" name="message"></textarea><br><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>

