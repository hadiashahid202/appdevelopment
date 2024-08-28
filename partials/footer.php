<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "businessdb";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$heading = "Contact me";

$sql = "SELECT img, link FROM contacts";
$result = $conn->query($sql);
?>

<div id="footer-section" class="page-section">
    <h2><?php echo $heading; ?></h2>
    <div class="footer-icons">
        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo '<a href="' . $row['link'] . '" target="_blank"><img src="assets/img/icons/' . $row['img'] . '.png"></a>';
            }
        } else {
            echo "No contacts available.";
        }
        ?>
    </div> <!-- closing footer-icons -->
</div><!-- closing footer-section -->

<?php
$conn->close();
?>


