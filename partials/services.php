<?php
    $heading  = "Services I provide";
    $services = [
        [
        'title' => "Web Design",
        'img'   => "web-design",
        'desc'  => "Web design for the new businesses. Modern, classy & sophisticated look."
        ],
        [
        'title' => "App Design",
        'img'   => "app-design",
        'desc'  => "Mobile app design for the new businesses. Modern, classy & sophisticated look."
        ],
        [
        'title' => "UI/UX Design",
        'img'   => "uiux-design",
        'desc'  => "UI/UX design for the new businesses. Modern, classy & sophisticated look."
        ]
    ];
?>


<div id="services-section" class="page-section">
    <h2><?php echo $heading; ?></h2>
    <div class="services">
        <?php
          foreach($services as $service){
        ?>
          <div class="service">
            <h3><?php echo $service['title']; ?></h3>
            <img src="assets/img/icons/<?php echo $service['img']; ?>.png">
            <p><?php echo $service['desc']; ?></p>
          </div>
        <?php
          }
        ?>
    </div> <!-- closing services -->
</div>    <!--  closing services-section -->
