<?php
// Database connection
$servername = "localhost";
$username = "root"; // Change if necessary
$password = ""; // Change if necessary
$database = "businessdb"; // Replace with your database name

// Create a connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$message = ""; // Initialize message variable
$heading = "Contacts";

// Ensure form data is submitted via POST method
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect form data
    $img = isset($_POST['img']) ? $_POST['img'] : '';
    $link = isset($_POST['link']) ? $_POST['link'] : '';

    // Check if all required fields are filled
    if (empty($img) || empty($link)) {
        $message = "Error: All fields are required.";
    } else {
        // Insert data into the contacts table
        $sql = "INSERT INTO contacts (img, link) VALUES ('$img', '$link')";

        if ($conn->query($sql) === TRUE) {
            $message = "New contact added successfully";
        } else {
            $message = "Error: " . $sql . "<br>" . $conn->error;
        }
         // Redirect with query parameter for the message
    header("Location: dashboard.php?page=footer&message=" . urlencode($message));
    exit(); // Ensure no further code is executed after redirection
    }
}

// Close connection
$conn->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Add Contact</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
    <div class="mx-auto mt-36 max-w-lg w-full bg-white p-8 rounded-lg shadow-lg">


        <h1 class="text-3xl font-bold mb-6 text-gray-800 text-center">Create Contacts</h1>
        <!-- Display message if it exists -->
            <?php if (isset($_GET['message'])): ?>
              <div class="mt-4 p-4 text-white <?php echo strpos($_GET['message'], 'Error') === false ? 'bg-green-500' : 'bg-red-500'; ?> rounded-md text-center">
                <?php echo htmlspecialchars($_GET['message']); ?>
              </div>
            <?php endif; ?>
        
        <form action="contact.php?page=footer" method="POST" class="pt-5 space-y-6">
            <div>
                <label for="img" class="block text-lg font-medium text-gray-700">Image Name</label>
                <input type="text" name="img" id="img" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>

            <div>
                <label for="link" class="block text-lg font-medium text-gray-700">Link</label>
                <input type="text" name="link" id="link" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>

            <div class="text-center">
                <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-gradient-to-t from-[#f77062] via-[#f77062] to-[#fe4444]">
                    Add Contact
                </button>
            </div>
        </form>
    </div>
</body>
</html>
