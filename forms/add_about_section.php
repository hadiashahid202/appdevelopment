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

                echo "Data inserted successfully.";
            } else {
                echo "Error: " . $stmt->error;
            }

            // Close the main statement
            $stmt->close();
        } else {
            echo "Error preparing statement: " . $conn->error;
        }
    } else {
        echo "Please fill in all required fields.";
    }
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
<body class="bg-gray-100 p-8">

    <div class="max-w-lg mx-auto bg-white p-6 rounded shadow">
        <h1 class="text-xl font-bold mb-4">Add About Section</h1>
        <form action="add_about_section.php" method="post">
            <!-- Heading -->
            <div class="mb-4">
                <label for="heading" class="block text-gray-700">Heading</label>
                <input type="text" id="heading" name="heading" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm" required>
            </div>

            <!-- Title -->
            <div class="mb-4">
                <label for="title" class="block text-gray-700">Title</label>
                <textarea id="title" name="title" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm" required></textarea>
            </div>

            <!-- Paragraph -->
            <div class="mb-4">
                <label for="paragraph" class="block text-gray-700">Paragraph</label>
                <textarea id="paragraph" name="paragraph" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm" required></textarea>
            </div>

            <!-- Link -->
            <div class="mb-4">
                <label for="link" class="block text-gray-700">Button Text</label>
                <input type="text" id="link" name="link" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm" required>
            </div>

            <!-- Image Name -->
            <div class="mb-4">
                <label for="img" class="block text-gray-700">Button Image (Name)</label>
                <input type="text" id="img" name="img" class="mt-1 border block w-full border-gray-300 rounded-md shadow-sm" required>
            </div>

            <!-- Button Description -->
            <div class="mb-4">
                <label for="desc" class="block text-gray-700">Button Description</label>
                <textarea id="desc" name="desc" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm" required></textarea>
            </div>

            <!-- Menu Items -->
            <div class="mb-4">
                <label for="menu_items" class="block text-gray-700">Menu Items (Comma Separated)</label>
                <textarea id="menu_items" name="menu_items" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm" placeholder="Home, About, Services, Pricing, Contact, Dashboard" required></textarea>
            </div>

            <!-- Menu Links -->
            <div class="mb-4">
                <label for="menu_links" class="block text-gray-700">Menu Links (Comma Separated)</label>
                <textarea id="menu_links" name="menu_links" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm" placeholder="#home, #about, #services, #pricing, #contact, #dashboard" required></textarea>
            </div>

            <!-- Icon Items -->
            <div class="mb-4">
                <label for="icons" class="block text-gray-700">Icons (Comma Separated)</label>
                <textarea id="icons" name="icons" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm" placeholder="facebook-icon, instagram-icon, linkedin-icon" required></textarea>
            </div>

            <!-- Icon Links -->
            <div class="mb-4">
                <label for="icon_links" class="block text-gray-700">Icon Links (Comma Separated)</label>
                <textarea id="icon_links" name="icon_links" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm" placeholder="https://facebook.com, https://instagram.com, https://linkedin.com" required></textarea>
            </div>

            <!-- Social Media Items -->
            <div class="mb-4">
                <label for="social_media" class="block text-gray-700">Social Media Items</label>
                <div id="social_media_container">
                    <div class="flex mb-4">
                        <input type="text" name="social_media[0][image]" class="mt-1 block w-1/4 border-gray-300 rounded-md shadow-sm" placeholder="Image Name" required>
                        <input type="text" name="social_media[0][desc]" class="mt-1 block w-1/4 border-gray-300 rounded-md shadow-sm mx-2" placeholder="Description" required>
                        <input type="text" name="social_media[0][cross_img]" class="mt-1 block w-1/4 border-gray-300 rounded-md shadow-sm mx-2" placeholder="Cross Image Name" required>
                        <input type="text" name="social_media[0][classes]" class="mt-1 block w-1/4 border-gray-300 rounded-md shadow-sm" placeholder="Classes" required>
                    </div>
                </div>
                <button type="button" id="add_social_media" class="bg-green-500 text-white px-4 py-2 rounded">Add Another</button>
            </div>

            <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded">Submit</button>
        </form>

        <script>
            let counter = 1;
            document.getElementById('add_social_media').addEventListener('click', () => {
                const container = document.getElementById('social_media_container');
                const newDiv = document.createElement('div');
                newDiv.classList.add('flex', 'mb-4');
                newDiv.innerHTML = `
                    <input type="text" name="social_media[${counter}][image]" class="mt-1 block w-1/4 border-gray-300 rounded-md shadow-sm" placeholder="Image Name" required>
                    <input type="text" name="social_media[${counter}][desc]" class="mt-1 block w-1/4 border-gray-300 rounded-md shadow-sm mx-2" placeholder="Description" required>
                    <input type="text" name="social_media[${counter}][cross_img]" class="mt-1 block w-1/4 border-gray-300 rounded-md shadow-sm mx-2" placeholder="Cross Image Name" required>
                    <input type="text" name="social_media[${counter}][classes]" class="mt-1 block w-1/4 border-gray-300 rounded-md shadow-sm" placeholder="Classes" required>
                `;
                container.appendChild(newDiv);
                counter++;
            });
        </script>
    </div>

</body>
</html>
