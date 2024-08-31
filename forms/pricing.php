<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "businessdb";

    $conn = new mysqli($servername, $username, $password, $database);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $message = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $title = $_POST['title'] ?? '';
        $price = $_POST['price'] ?? '';
        $button_text = $_POST['button_text'] ?? '';
        $classes = str_replace(' ', '-', strtolower($title)); // Create CSS class from title
        $popular = isset($_POST['popular']) ? 1 : 0;
        $features = $_POST['features'] ?? '';
        
        // Join features into a comma-separated string
        $features_list = implode(',', $_POST['features'] ?? []);

        $sql = "INSERT INTO packages (title, price, button_text, classes, popular, features)
                    VALUES ('$title', '$price', '$button_text', '$classes', '$popular', '$features_list')";

        if ($conn->query($sql) === TRUE) {
            $message = "New record created successfully";
        } else {
            $message = "Error: " . $sql . "<br>" . $conn->error;
        }
        // Redirect with query parameter for the message
        header("Location: dashboard.php?page=packages&message=" . urlencode($message));
        exit(); // Ensure no further code is executed after redirection
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
    <script>
        function addFeature() {
            const container = document.getElementById('features-container');
            const input = document.createElement('input');
            input.type = 'text';
            input.name = 'features[]';
            input.className = 'mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm';
            input.placeholder = 'Feature';
            container.appendChild(input);
        }
    </script>
</head>
<body class="bg-gray-100 p-6">

    <form action="pricing.php?page=packages" method="POST" class="max-w-4xl mx-auto mb-5 mt-5 space-y-6 bg-white p-8 rounded-lg shadow-lg">
        <!-- Display message if it exists -->
        <?php if (isset($_GET['message'])): ?>
          <div class="mt-4 p-4 text-white <?php echo strpos($_GET['message'], 'Error') === false ? 'bg-gradient-to-tr from-[#118ab2] via-[#06d6a0] to-[#ffd166]' : 'bg-red-500'; ?> rounded-md text-center">
            <?php echo htmlspecialchars($_GET['message']); ?>
          </div>
        <?php endif; ?>
        <h2 class="font-semibold leading-7 text-center text-gray-900 text-4xl">Add Packages</h2>
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

            <div class="flex items-center">
                <input type="checkbox" name="popular" id="popular" value="1" class="h-4 w-4 text-indigo-600 border-gray-300 rounded focus:ring-indigo-500">
                <label for="popular" class="ml-2 block text-lg font-medium text-gray-700">Popular</label>
            </div>

            <div id="features-container">
                <label for="features" class="block text-lg font-medium text-gray-700">Features</label>
                <!-- Placeholder input field for features -->
                <input type="text" name="features[]" class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm" placeholder="Feature">
            </div>
            <button type="button" onclick="addFeature()" class="mt-2 bg-gradient-to-t from-[#f77062] via-[#f77062] to-[#fe4444] text-white px-4 py-2 rounded-md hover:bg-blue-600">Add Another Feature</button>
        </div>

        <div class="pt-5 text-center">
            <button type="submit" class="bg-gradient-to-t from-[#f77062] via-[#f77062] to-[#fe4444] inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white hover:bg-opacity-80 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                Add Plan
            </button>
        </div>
    </form>
</body>
</html>
