<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "businessdb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$heading = "Services I provide";
$services = [];

$sql = "SELECT title, image AS img, description AS `desc` FROM services";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $services[] = $row;
    }
} else {
    echo "No services available.";
}

$conn->close();
?>

<div id="services-section" class="page-section">
    <h2><?php echo $heading; ?></h2>
    <div class="services">
        <?php
          foreach($services as $service){
        ?>
          <div class="service">
            <h3><?php echo $service['title']; ?></h3>
            <img src="assets/img/icons/<?php echo $service['img']; ?>.png" alt="<?php echo $service['title']; ?>">
            <p><?php echo $service['desc']; ?></p>
          </div>
        <?php
          }
        ?>
    </div> <!-- closing services -->
</div> <!-- closing services-section -->