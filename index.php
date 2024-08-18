<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>APP-DEV</title>
    	<!-- Load website styles -->
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="normalize.css">
	
	<!-- Load websites fonts -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

    <!-- Load icons -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div id="page-wrap">

    <?php
        $heading = "Pricing";
        $prices =[
            [
                'title' => "Basic",
                'head' =>   "$200",
                'button' => "Buy Now",
                'class'  => "basic",
                'classes' => "",
               
                'list' => array("Landing Page","Visual Branding")
               
            ],
            [
                'title' => "Standard",
                'head' =>   "$500",
                'button' => "Buy Now",
                'class'  => "standard",
                'classes' => "ribbon ribbon-top-right",
                'list' => array("Landing Page","Visual Branding","Web design")
                
            ],
            [
                'title' => "Premium",
                'head' =>   "$1k",
                'button' => "Buy Now",
                'class'  => "premium",
                'classes' => "",
                'list' => array("Landing Page","Visual Branding","Web design","Market Research")

            ]
        ];
    ?>
        <!-- pricing section -->
     	<div id="pricing-section" class="page-section">
            <h2><?php echo $heading; ?></h2>
            <div class="pricing-table">
                
                    <?php 
                    foreach($prices as $price){
                    ?>
                    <div class="pricing <?php echo $price['class'] ?>">
                        <div class="<?php echo $price['classes'] ?>"><span></span></div>
                        <h3><?php echo $price['title']; ?></h3>
                        <hr>
                        <h2><?php echo $price['head']; ?></h2>
         				<ul>
                            <?php
                            foreach ($price['list'] as $item) {
                            ?>
         					<li><i class="fa-solid fa-circle-check"></i> <?php echo $item; ?></li>
                            <?php
                                } 
                            ?>
         				</ul>
         				<div class="package-btn">
         					<a><?php echo $price['button']; ?></a>
         				</div>
                    </div>
                    <?php
                    }
                    ?>

            </div><!--  closing pricing-table -->
        </div> <!-- closing pricing-section -->

    </div> <!-- closing page wrapper -->
</body>
</html>