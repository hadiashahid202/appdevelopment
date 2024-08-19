<?php
  $heading = "Contact me";
  $contacts = [
	  	[
	  		'img'  => "facebook",
            'link' => "https://www.facebook.com"
	  	],

	  	[
	  		'img'  => "insta",
            'link' => "https://www.instagram.com"
	  	],
	  	
	  	[
	  		'img'  => "linkedin",
            'link' => "https://pk.linkedin.com"
	  	]
    ];
?>

<div id="footer-section" class="page-section">
    <h2><?php echo $heading; ?></h2>
    <div class="footer-icons">
        <?php
            foreach($contacts as $contact){
        ?>
           <a href="<?php echo $contact['link']; ?>" target="_blank"><img src="assets/img/icons/<?php echo $contact['img']; ?>.png"></a> 
        <?php
            }
        ?>
    </div> <!-- closing footer-icons -->
</div><!--  closing footer-section -->