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
<div id="aboutme-section" class="page-section bg-gray-50 py-12">
  <div class="container mx-auto px-4">
    <h2 class="text-3xl font-bold mb-8 text-gray-800"><?php echo $heading; ?></h2>
    <div class="media-section grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
      <?php
        foreach($items as $item){
      ?>
        <div class="<?php echo $item['classes']; ?> bg-white p-6 rounded-lg shadow-md">
          <img src="assets/img/icons/<?php echo $item['img']; ?>.png" class="w-16 h-16 mb-4">
          <div class="content">
            <h3 class="text-xl font-semibold mb-2"><?php echo $item['title']; ?></h3>
            <p class="text-gray-600"><?php echo $item['desc']; ?></p>
          </div>
        </div> <!-- closing media -->
      <?php
        }
      ?>
    </div> <!-- closing media-section -->
    <div class="image-section mt-12 text-center">
      <img src="assets/img/icons/<?php echo $image; ?>.png" class="mx-auto">
    </div>
  </div> <!-- closing container -->
</div> <!-- closing aboutme-section -->


