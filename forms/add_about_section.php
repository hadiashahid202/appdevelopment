<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "businessdb";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$message = "";

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve and sanitize POST data
    $heading = isset($_POST['heading']) ? $_POST['heading'] : '';
    $title = isset($_POST['title']) ? $_POST['title'] : '';
    $paragraph = isset($_POST['paragraph']) ? $_POST['paragraph'] : '';
    $link = isset($_POST['link']) ? $_POST['link'] : '';
    $img = isset($_POST['img']) ? $_POST['img'] : '';
    $desc = isset($_POST['desc']) ? $_POST['desc'] : '';

    // Validate that required fields are not empty
    if ($heading && $title && $paragraph && $link && $img && $desc) {
        // Prepare main about section insertion
        $stmt = $conn->prepare("INSERT INTO about_section (heading, title, paragraph, link, img, `desc`) VALUES (?, ?, ?, ?, ?, ?)");
        if ($stmt) {
            $stmt->bind_param("ssssss", $heading, $title, $paragraph, $link, $img, $desc);

            // Execute the main insert statement
            if ($stmt->execute()) {
                $about_section_id = $stmt->insert_id;

                // Insert menu items
                if (isset($_POST['menu_items']) && isset($_POST['menu_links'])) {
                    $menu_items = explode(",", $_POST['menu_items']);
                    $menu_links = explode(",", $_POST['menu_links']);
                    $menu_stmt = $conn->prepare("INSERT INTO menu_items (about_section_id, list_item, link) VALUES (?, ?, ?)");

                    if ($menu_stmt) {
                        foreach ($menu_items as $index => $item) {
                            $link = $menu_links[$index] ?? '';
                            $menu_stmt->bind_param("iss", $about_section_id, $item, $link);
                            $menu_stmt->execute();
                        }
                        $menu_stmt->close();
                    }
                }

                // Insert icons
                if (isset($_POST['icons']) && isset($_POST['icon_links'])) {
                    $icons = explode(",", $_POST['icons']);
                    $icon_links = explode(",", $_POST['icon_links']);
                    $icon_stmt = $conn->prepare("INSERT INTO icons (about_section_id, img, link) VALUES (?, ?, ?)");

                    if ($icon_stmt) {
                        foreach ($icons as $index => $icon) {
                            $link = $icon_links[$index] ?? '';
                            $icon_stmt->bind_param("iss", $about_section_id, $icon, $link);
                            $icon_stmt->execute();
                        }
                        $icon_stmt->close();
                    }
                }

                // Insert social media items
                if (isset($_POST['social_media'])) {
                    $social_media_items = $_POST['social_media'];
                    $social_media_stmt = $conn->prepare("INSERT INTO social_media (about_section_id, image, `desc`, cross_img, classes) VALUES (?, ?, ?, ?, ?)");

                    if ($social_media_stmt) {
                        foreach ($social_media_items as $item) {
                            $image = $item['image'] ?? '';
                            $desc = $item['desc'] ?? '';
                            $cross_img = $item['cross_img'] ?? '';
                            $classes = $item['classes'] ?? '';
                            $social_media_stmt->bind_param("issss", $about_section_id, $image, $desc, $cross_img, $classes);
                            $social_media_stmt->execute();
                        }
                        $social_media_stmt->close();
                    }
                }

                $message = "Data inserted successfully.";
            } else {
                $message = "Error: " . $stmt->error;
            }

            // Close the main statement
            $stmt->close();
        } else {
            echo "Error preparing statement: " . $conn->error;
        }
    } else {
        echo "Please fill in all required fields.";
    }
      // Redirect with query parameter for the message
    header("Location: dashboard.php?page=hero-section&message=" . urlencode($message));
    exit(); // Ensure no further code is executed after redirection
}

// Close the connection
$conn->close();
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add About Section</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-blue-200 via-blue-300 to-blue-400 p-8">

    <div class="max-w-7xl mt-5 mb-5 mx-auto bg-white p-8 rounded-xl shadow-lg border border-gray-300">
     <!-- Display message if it exists -->
        <?php if (isset($_GET['message'])): ?>
          <div class="mt-4 p-4 text-white <?php echo strpos($_GET['message'], 'Error') === false ? 'bg-green-500' : 'bg-red-500'; ?> rounded-md text-center">
            <?php echo htmlspecialchars($_GET['message']); ?>
          </div>
        <?php endif; ?>
        <h1 style="color: #fe8444;" class="text-4xl font-bold text-center text-gray-800 mb-8">Add Hero Section</h1>
        <form action="add_about_section.php?page=hero-section" method="post" class="space-y-8 max-w-1240 mx-auto">
            <!-- Heading and Title -->
            <div class="grid gap-6 mb-6 md:grid-cols-2">
                <!-- Heading -->
                <div class="flex flex-col">
                    <label for="heading" class="text-xl font-medium text-gray-800">Heading</label>
                    <input type="text" id="heading" name="heading" class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 transition ease-in-out duration-300" required>
                </div>

                <!-- Title -->
                <div class="flex flex-col">
                    <label for="title" class="text-xl font-medium text-gray-800">Title</label>
                    <input id="title" name="title" class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 transition ease-in-out duration-300" rows="3" required></input>
                </div>
            </div>

            <!-- Paragraph -->
            <div class="flex flex-col mb-6">
                <label for="paragraph" class="text-xl font-medium text-gray-800">Paragraph</label>
                <textarea id="paragraph" name="paragraph" class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 resize-none transition ease-in-out duration-300" rows="4" required></textarea>
            </div>

            <!-- Button Text, Image, and Description in a Row -->
            <div class="flex flex-wrap gap-6 mb-6">
                <!-- Button Text -->
                <div class="flex-1 flex flex-col">
                    <label for="link" class="text-xl font-medium text-gray-800">Button Text</label>
                    <input type="text" id="link" name="link" class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 transition ease-in-out duration-300" required>
                </div>

                <!-- Button Image -->
                <div class="flex-1 flex flex-col">
                    <label for="img" class="text-xl font-medium text-gray-800">Button Image (Name)</label>
                    <input type="text" id="img" name="img" class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 transition ease-in-out duration-300" required>
                </div>

                <!-- Button Description -->
                <div class="flex-2 flex flex-col">
                    <label for="desc" class="text-xl font-medium text-gray-800">Button Description</label>
                    <input id="desc" name="desc" class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg resize-none shadow-sm focus:ring-blue-500 focus:border-blue-500 transition ease-in-out duration-300" rows="3" required></input>
                </div>
            </div>


            <!-- Menu Items and Links -->
            <div class="grid gap-6 mb-6 md:grid-cols-2">
                <!-- Menu Items -->
                <div class="flex flex-col">
                    <label for="menu_items" class="text-xl font-medium text-gray-800">Menu Items (Comma Separated)</label>
                    <textarea id="menu_items" name="menu_items" class="mt-1 block w-full px-4 py-2 border resize-none border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 transition ease-in-out duration-300" placeholder="Home, About, Services, Pricing, Contact, Dashboard" rows="2" required></textarea>
                </div>

                <!-- Menu Links -->
                <div class="flex flex-col">
                    <label for="menu_links" class="text-xl font-medium text-gray-800">Menu Links (Comma Separated)</label>
                    <textarea id="menu_links" name="menu_links" class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 resize-none transition ease-in-out duration-300" placeholder="#home, #about, #services, #pricing, #contact, #dashboard" rows="2" required></textarea>
                </div>
            </div>

            <!-- Icons and Icon Links -->
            <div class="grid gap-6 mb-6 md:grid-cols-2">
                <!-- Icons -->
                <div class="flex flex-col">
                    <label for="icons" class="text-xl font-medium text-gray-800">Icons (Comma Separated)</label>
                    <textarea id="icons" name="icons" class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 resize-none transition ease-in-out duration-300" placeholder="facebook-icon, instagram-icon, linkedin-icon" rows="2" required></textarea>
                </div>

                <!-- Icon Links -->
                <div class="flex flex-col">
                    <label for="icon_links" class="text-xl font-medium text-gray-800">Icon Links (Comma Separated)</label>
                    <textarea id="icon_links" name="icon_links" class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 resize-none transition ease-in-out duration-300" placeholder="https://facebook.com, https://instagram.com, https://linkedin.com" rows="2" required></textarea>
                </div>
            </div>

            <!-- Social Media Items -->
            <div class="flex flex-col mb-6">
                <label for="social_media" class="text-xl font-medium text-gray-800">Social Media Items</label>
                <div id="social_media_container" class="space-y-4">
                    <div class="grid gap-4 grid-cols-1 md:grid-cols-4">
                        <input type="text" name="social_media[0][image]" class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm" placeholder="Image Name" required>
                        <input type="text" name="social_media[0][desc]" class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm" placeholder="Description" required>
                        <input type="text" name="social_media[0][cross_img]" class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm" placeholder="Cross Image Name" required>
                        <input type="text" name="social_media[0][classes]" class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm" placeholder="Classes" required>
                    </div>
                </div>
                <button type="button" id="add_social_media" class="mt-4 bg-green-600 text-white px-4 py-2 rounded-lg shadow-lg hover:bg-green-700 focus:outline-none bg-gradient-to-t from-[#f77062] via-[#f77062] to-[#fe8444] ">Add Another</button>
            </div>

            <!-- Centered Submit Button -->
            <div class="flex justify-center mt-8">
                <button type="submit" class="bg-blue-600 text-white px-8 py-4 rounded-xl shadow-lg hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 bg-gradient-to-t from-[#f77062] via-[#f77062] to-[#fe8444]">Submit</button>
            </div>
        </form>
    </div>

    <script>
        let counter = 1;
        document.getElementById('add_social_media').addEventListener('click', () => {
            const container = document.getElementById('social_media_container');
            const newDiv = document.createElement('div');
            newDiv.classList.add('grid', 'gap-4', 'grid-cols-1', 'md:grid-cols-4', 'mb-4');
            newDiv.innerHTML = `
                <input type="text" name="social_media[${counter}][image]" class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm" placeholder="Image Name" required>
                <input type="text" name="social_media[${counter}][desc]" class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm" placeholder="Description" required>
                <input type="text" name="social_media[${counter}][cross_img]" class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm" placeholder="Cross Image Name" required>
                <input type="text" name="social_media[${counter}][classes]" class="px-4 py-2 border border-gray-300 rounded-lg shadow-sm" placeholder="Classes" required>
            `;
            container.appendChild(newDiv);
            counter++;
        });
    </script>
</body>
</html>
