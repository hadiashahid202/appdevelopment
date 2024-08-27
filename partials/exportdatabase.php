<?php
$mysqli = new mysqli("localhost", "root", "", "businessdb");

if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

$sql_file = 'businessdb.sql';
$query = file_get_contents($sql_file);

if ($query === false) {
    die("Error: Could not read the SQL file.");
}

if ($mysqli->multi_query($query)) {
    do {
        if ($result = $mysqli->store_result()) {
            $result->free();
        }
    } while ($mysqli->next_result());
    echo "SQL file executed successfully!";
} else {
    echo "Error executing SQL file: " . $mysqli->error;
}

$mysqli->close();
?>
