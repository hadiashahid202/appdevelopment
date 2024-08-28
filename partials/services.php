<?php
$servername = "localhost";
$username = "root";  
$password = "";     
$dbname = "businessdb"; 

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT title, image, description FROM services";
$result = $conn->query($sql);
?>

<div id="services-section" class="page-section">
    <h2>Services I provide</h2>
    <div class="services">
        <?php
          if ($result->num_rows > 0) {
              while($service = $result->fetch_assoc()) {
        ?>
          <div class="service">
            <h3><?php echo $service['title']; ?></h3>
            <img src="assets/img/icons/<?php echo $service['image']; ?>.png">
            <p><?php echo $service['description']; ?></p>
          </div>
        <?php
              }
          } else {
              echo "No services available.";
          }
        ?>
    </div> <!-- closing services -->
</div>     <!--  closing services-section -->

<?php $conn->close(); ?>
