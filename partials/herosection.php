<?php
    $heading   = "Khan Design";
    $title     = "Design like a pro <br> and make money";
    $paragraph = "This is a extensive program for people <br> who want to use their design skills to earn more";
    $link      = "Order";
    $img       = "Vector";
    $desc      =  "order here";
    $listitems = [
        'list' => array( "Home", "About", "Services", "Pricing", "Contact")
    ];
    $icons = [
        [
          'img'  => "instagram-icon",
          'link' => "https://www.facebook.com"
        ],

        [
          'img'  => "facebook-icon",
          'link' => "https://www.instagram.com"
        ],
        
        [
          'img'  => "linkedin-icon",
          'link' => "https://pk.linkedin.com"
        ]
    ];

    $socials = [
        [
          'image'  => "photoshop",
          'desc'  => "Photoshop",
          'cross-img'  => "cross",
          'classes'   => "photoshop"
        ],
         [
          'image'  => "adobe",
          'desc'  => "Illustrator",
          'cross-img'  => "adobe-cross",
          'classes'   => "adobe"
        ],
         [
          'image'  => "Figma",
          'desc'  => "Figma",
          'cross-img'  => "figma-cross",
          'classes'   => "figma"
        ]
    ];
?>

     <!-- about section -->
<div id="about" class="page-section">
      <div class="header">
        <h3><a href="#"><?php echo $heading; ?></a></h3>
        <ul>
          <?php
            foreach($listitems['list'] as $item){
          ?>
            <li><a href="#"><?php echo $item; ?></a></li>
          <?php
            }
          ?>
        </ul>
        <div class="icons">
          <?php
            foreach($icons as $icon){
          ?>
            <a href="#"><img src="assets/img/icons/<?php echo $icon['img']; ?>.png"></a>
          <?php
            }
          ?>
        </div>
      </div> <!-- closing header-section -->

      <div class="content-section">
        <h1><?php echo $title; ?></h1>
        <p><?php echo $paragraph; ?></p>
        <div class="package-btn">
          <a href="#"><?php echo $link; ?></a>
          <img src="assets/img/icons/<?php echo $img; ?>.png">
          <p><?php echo $desc; ?></p>
        </div> 
      </div> <!-- closing content-section -->

      <div class="menu-container">
        <div class="menu-section">
          <?php
            foreach($socials as $social){
          ?>
            <div class="menu <?php echo $social['classes']; ?>">
              <img src="assets/img/icons/<?php echo $social['image']; ?>.png">
              <p><?php echo $social['desc']; ?></p>
              <img src="assets/img/icons/<?php echo $social['cross-img']; ?>.png">
            </div>
          <?php
            }
          ?>
        </div>
      </div><!--  closing menu-container -->
</div> <!-- closing about-section -->
