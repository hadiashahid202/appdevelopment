<?php
$servername = "localhost";
$username = "root";  
$password = "";     
$dbname = "businessdb"; 

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$message = ""; // Initialize message variable

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $title = $_POST['service-title'];
    $image = $_POST['service-image'];
    $description = $_POST['service-description'];

    $sql = "INSERT INTO services (title, image, description) VALUES ('$title', '$image', '$description')";

    if ($conn->query($sql) === TRUE) {
        $message = "New service added successfully";
    } else {
        $message = "Error: " . $sql . "<br>" . $conn->error;
    }

    // Redirect with query parameter for the message
    header("Location: dashboard.php?page=services&message=" . urlencode($message));
    exit(); // Ensure no further code is executed after redirection
}

$conn->close();
?>

<!DOCTYPE html>
<html>
<head>
  <title>Add Services</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
  <main>
    <div class="mx-auto mt-5 max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
      <!-- Display message if it exists -->
            <?php if (isset($_GET['message'])): ?>
              <div class="mt-4 p-4 text-white <?php echo strpos($_GET['message'], 'Error') === false ? 'bg-gradient-to-tr from-[#118ab2] via-[#06d6a0] to-[#ffd166]' : 'bg-red-500'; ?> rounded-md text-center">
                <?php echo htmlspecialchars($_GET['message']); ?>
              </div>
            <?php endif; ?>
      <form action="service.php?page=services" method="POST">
        <div class="space-y-12 bg-white p-20">
          <div class="border-b border-gray-900/10 pb-12">
            <h2 class="font-semibold leading-7 text-gray-900 text-4xl">Create Service</h2>
            <p class="mt-1 text-md leading-6 text-gray-600">On this page you can add your service post</p>
            <div class="mt-10 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
              <div class="sm:col-span-3">
                <label for="title" class="block font-medium leading-6 text-gray-900 text-2xl">Service Title</label>
                <div class="mt-2">
                  <input type="text" name="service-title" id="title" required class="block w-full p-2 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                </div>
              </div>

              <div class="sm:col-span-3">
                <label for="image" class="block text-2xl font-medium leading-6 text-gray-900">Service Image</label>
                <div class="mt-2">
                  <input type="text" name="service-image" id="image" required class="block w-full p-2 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                </div>
              </div>

              <div class="sm:col-span-4">
                <label for="desc" class="block text-2xl font-medium leading-6 text-gray-900">Service Description</label>
                <div class="mt-2">
                  <textarea name="service-description" id="desc" required class="block resize-none w-full rounded-md border-0 p-2 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"></textarea>
                </div>
              </div>
            </div>

            <div class="mt-6 flex items-center justify-end gap-x-6">
              <button type="submit" class="rounded-md px-3 py-2 text-sm font-semibold text-white shadow-sm bg-gradient-to-t from-[#f77062] via-[#f77062] to-[#fe4444]">Add Service</button>
            </div>
          </div>
        </div>
      </form>
    </div>
  </main>
</body>
</html>
