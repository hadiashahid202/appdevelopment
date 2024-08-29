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

// Query to fetch the latest about_section entry
$sql = "SELECT * FROM about_section ORDER BY id DESC LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $about_section = $result->fetch_assoc();

    // Fetch related data
    $about_section_id = $about_section['id'];
    
    // Menu items
    $menu_items_sql = "SELECT * FROM menu_items WHERE about_section_id = ?";
    $menu_stmt = $conn->prepare($menu_items_sql);
    $menu_stmt->bind_param("i", $about_section_id);
    $menu_stmt->execute();
    $menu_items_result = $menu_stmt->get_result();
    $menu_items = $menu_items_result->fetch_all(MYSQLI_ASSOC);

    // Icons
    $icons_sql = "SELECT * FROM icons WHERE about_section_id = ?";
    $icons_stmt = $conn->prepare($icons_sql);
    $icons_stmt->bind_param("i", $about_section_id);
    $icons_stmt->execute();
    $icons_result = $icons_stmt->get_result();
    $icons = $icons_result->fetch_all(MYSQLI_ASSOC);

    // Social media items
    $social_media_sql = "SELECT * FROM social_media WHERE about_section_id = ?";
    $social_media_stmt = $conn->prepare($social_media_sql);
    $social_media_stmt->bind_param("i", $about_section_id);
    $social_media_stmt->execute();
    $social_media_result = $social_media_stmt->get_result();
    $socials = $social_media_result->fetch_all(MYSQLI_ASSOC);
} else {
    echo "No data found.";
}

// Close connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Section</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>

    <!-- about section -->
    <div id="about" class="page-section">
        <div class="header">
            <label class="checkbtn">
                <i class="fa fa-bars"></i>
            </label>
            <h3><a href="#"><?php echo htmlspecialchars($about_section['heading']); ?></a></h3>
            <ul class="sidebar" id="sidebar">
                <?php foreach ($menu_items as $item): ?>
                    <li><a href="<?php echo htmlspecialchars($item['link']); ?>" class="closebtn"><?php echo htmlspecialchars($item['list_item']); ?></a></li>
                <?php endforeach; ?>
            </ul>
            <div class="icons">
                <?php foreach ($icons as $icon): ?>
                    <a href="<?php echo htmlspecialchars($icon['link']); ?>">
                        <img src="assets/img/icons/<?php echo htmlspecialchars($icon['img']); ?>.png" alt="<?php echo htmlspecialchars($icon['img']); ?>">
                    </a>
                <?php endforeach; ?>
            </div>
        </div> <!-- closing header-section -->

        <div class="content-section">
            <h1><?php echo htmlspecialchars($about_section['title']); ?></h1>
            <p><?php echo htmlspecialchars($about_section['paragraph']); ?></p>
            <div class="package-btn">
                <a href="#"><?php echo htmlspecialchars($about_section['link']); ?></a>
                <img src="assets/img/icons/<?php echo htmlspecialchars($about_section['img']); ?>.png" alt="<?php echo htmlspecialchars($about_section['img']); ?>">
                <p><?php echo htmlspecialchars($about_section['desc']); ?></p>
            </div>
        </div> <!-- closing content-section -->

        <div class="menu-container">
            <div class="menu-section">
                <?php foreach ($socials as $social): ?>
                    <div class="menu <?php echo htmlspecialchars($social['classes']); ?>">
                        <div class="menu-content">
                            <img src="assets/img/icons/<?php echo htmlspecialchars($social['image']); ?>.png" alt="<?php echo htmlspecialchars($social['desc']); ?>">
                            <p><?php echo htmlspecialchars($social['desc']); ?></p>
                        </div>
                        <div class="cross-image">
                            <img src="assets/img/icons/<?php echo htmlspecialchars($social['cross_img']); ?>.png" alt="cross">
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div><!--  closing menu-container -->
    </div> <!-- closing about-section -->

</body>
</html>
