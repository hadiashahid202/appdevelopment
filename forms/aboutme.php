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
        $img = isset($_POST['img']) ? $_POST['img'] : '';
        $title = isset($_POST['title']) ? $_POST['title'] : '';
        $desc = isset($_POST['desc']) ? $_POST['desc'] : '';
        $classes = isset($_POST['classes']) ? $_POST['classes'] : '';

        if (empty($img) || empty($title) || empty($desc) || empty($classes)) {
            $message = "Error: All fields are required.";
        } else {
            $stmt = $conn->prepare("INSERT INTO aboutme (img, title, `desc`, classes) VALUES (?, ?, ?, ?)");
            $stmt->bind_param("ssss", $img, $title, $desc, $classes);

            if ($stmt->execute()) {
                $message = "New item added successfully";
            } else {
                $message = "Error: " . $stmt->error;
            }

            $stmt->close();
        }
    }

    $conn->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Add About Me Item</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
    <div class="max-w-md w-full bg-white p-8 rounded-lg shadow-lg">
         <h1 class="text-2xl font-bold mb-6 text-gray-800 text-center">Create About Me Item</h1>
        <?php if (!empty($message)) : ?>
            <div class="mb-4 p-4 text-white <?php echo strpos($message, 'Error') === false ? 'bg-green-500' : 'bg-red-500'; ?> rounded-md">
                <?php echo $message; ?>
            </div>
        <?php endif; ?>

        <form action="aboutme.php" method="POST" class="space-y-6">
            <div>
                <label for="img" class="block text-lg font-medium text-gray-700">Image Name</label>
                <input type="text" name="img" id="img" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>

            <div>
                <label for="title" class="block text-lg font-medium text-gray-700">Title</label>
                <input type="text" name="title" id="title" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>

            <div>
                <label for="desc" class="block text-lg font-medium text-gray-700">Description</label>
                <textarea name="desc" id="desc" rows="4" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"></textarea>
            </div>

            <div>
                <label for="classes" class="block text-lg font-medium text-gray-700">CSS Classes</label>
                <input type="text" name="classes" id="classes" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
            </div>

            <div class="pt-5">
                <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                    Add Item
                </button>
            </div>
        </form>
    </div>
</body>
</html>
