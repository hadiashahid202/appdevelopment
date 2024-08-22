<?php
  $heading = "Who am I?";
  $image = "aboutme";
  $items = [
          [
            'img' => "social-media",
            'title' => "25,000+",
            'desc' => "Social media audience",
            'classes' => "media"
          ],
          [
            'img' => "social",
            'title' => "150+",
            'desc' => "Clients",
            'classes' => "media social"
          ],
          [
            'img' => "checkout",
            'title' => "700+",
            'desc' => "Projects completed",
            'classes' => "media checkout"

          ]

  ];
?>

<!-- who am I section -->
<div id="aboutme-section" class="page-section">
  <div class="container">
    <h2><?php echo $heading; ?></h2>
    <div class="media-section">
      <?php
        foreach($items as $item){
      ?>
        <div class="<?php echo $item['classes']; ?>">
          <img src="assets/img/icons/<?php echo $item['img']; ?>.png">
          <div class="content">
            <h3><?php echo $item['title']; ?></h3>
            <p><?php echo $item['desc']; ?></p>
          </div>
        </div> <!-- closing media -->
      <?php
        }
      ?>
    </div> <!-- closing media-section -->
  </div> <!-- closing container -->
    <div class="image-section">
      <img src="assets/img/icons/<?php echo $image; ?>.png">
    </div>
</div> <!-- closing aboutme section -->