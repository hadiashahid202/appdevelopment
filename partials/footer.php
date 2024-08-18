<?php
  $heading = "Contact me";
  $contacts = [
	  	[
	  		'img' => "assets/img/icons/facebook"
	  	],

	  	[
	  		'img' => "assets/img/icons/insta"
	  	],
	  	
	  	[
	  		'img' => "assets/img/icons/linkedin"
	  	]
    ];
?>

<div id="footer-section" class="page-section">
    <h2><?php echo $heading; ?></h2>
    <div class="assets">
        <?php
            foreach($contacts as $contact){
        ?>
            <img src="<?php echo $contact['img']; ?>.png">
        <?php
            }
        ?>
    </div> <!-- closing assets -->
</div><!--  closing footer-section -->