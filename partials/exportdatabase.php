<?php
// Connect to the Database
$mysqli = new mysqli("localhost", "root", "", "businessdb");

if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// Read SQL File
$sql_file = 'partials/businessdb.sql';
$query = file_get_contents($sql_file);

if ($query === false) {
    die("Error: Could not read the SQL file.");
}

// Execute SQL Query
if ($mysqli->multi_query($query)) {
    // Process each result set
    do {
        // Store first result set
        if ($result = $mysqli->store_result()) {
            $result->free();
        }
    } while ($mysqli->next_result());
    echo "SQL file executed successfully!";
} else {
    echo "Error executing SQL file: " . $mysqli->error;
}

// Close the Connection
$mysqli->close();
?>
