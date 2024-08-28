<?php
	$servername = "localhost";
	$username = "root"; 
	$password = ""; 
	$database = "businessdb";

	$conn = new mysqli($servername, $username, $password, $database);

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}

	$title = $_POST['title'] ?? '';
	$price = $_POST['price'] ?? '';
	$button_text = $_POST['button_text'] ?? '';
	$classes = $_POST['classes'] ?? '';
	$popular = isset($_POST['popular']) ? 1 : 0;
	$features = $_POST['features'] ?? '';

	if(empty($title) || empty($price) || empty($button_text) || empty($classes) || empty($features)) {
	    echo "Error: All fields are required.";
	} else {
	   
	    $sql = "INSERT INTO packages (title, price, button_text, classes, popular, features)
	            VALUES ('$title', '$price', '$button_text', '$classes', '$popular', '$features')";

	    if ($conn->query($sql) === TRUE) {
	        echo "New record created successfully";
	    } else {
	        echo "Error: " . $sql . "<br>" . $conn->error;
	    }
	}

	$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Pricing Plan</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-6">
    <form action="pricing.php" method="POST" class="space-y-6 bg-white p-8 rounded-lg shadow-lg">
        <div class="grid grid-cols-1 gap-6">
            <div>
                <label for="title" class="block text-lg font-medium text-gray-700">Plan Title</label>
                <input type="text" name="title" id="title" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>

            <div>
                <label for="price" class="block text-lg font-medium text-gray-700">Price</label>
                <input type="text" name="price" id="price" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>

            <div>
                <label for="button_text" class="block text-lg font-medium text-gray-700">Button Text</label>
                <input type="text" name="button_text" id="button_text" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>

            <div>
                <label for="classes" class="block text-lg font-medium text-gray-700">CSS Class</label>
                <input type="text" name="classes" id="classes" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>

            <div class="flex items-center">
                <input type="checkbox" name="popular" id="popular" value="1" class="h-4 w-4 text-indigo-600 border-gray-300 rounded focus:ring-indigo-500">
                <label for="popular" class="ml-2 block text-lg font-medium text-gray-700">Popular</label>
            </div>

            <div>
                <label for="features" class="block text-lg font-medium text-gray-700">Features (comma separated)</label>
                <input type="text" name="features" id="features" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>
        </div>

        <div class="pt-5">
            <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                Add Plan
            </button>
        </div>
    </form>
</body>
</html>
