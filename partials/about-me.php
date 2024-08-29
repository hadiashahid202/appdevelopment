<?php
  $heading = "Who am I?";
  $image = "aboutme";
  $items = [];

  $servername = "localhost";
  $username = "root";
  $password = "";
  $database = "businessdb";

  $conn = new mysqli($servername, $username, $password, $database);

  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  }

  $sql = "SELECT img, title, `desc`, classes FROM aboutme";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
      while ($row = $result->fetch_assoc()) {
          $items[] = $row;
      }
  }

  $conn->close();
?>

<!-- Who am I section -->
<div id="aboutme-section" class="page-section">
  <div class="container">
    <h2><?php echo $heading; ?></h2>
    <div class="media-section ">
      <?php
        foreach($items as $item){
      ?>
        <div class="<?php echo $item['classes']; ?> ">
          <img src="assets/img/icons/<?php echo $item['img']; ?>.png" >
          <div class="content">
            <h3><?php echo $item['title']; ?></h3>
            <p><?php echo $item['desc']; ?></p>
          </div>
        </div> <!-- closing media -->
      <?php
        }
      ?>
    </div> <!-- closing media-section -->
    <div class="image-section">
      <img src="assets/img/icons/<?php echo $image; ?>.png">
    </div>
  </div> <!-- closing container -->
</div> <!-- closing aboutme-section -->


