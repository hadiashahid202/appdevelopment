<?php
	$heading = "Pricing";
	$prices  = [
		[
			'title'   =>  "Basic",
			'head'    =>  "$200",
			'button'  =>  "Buy Now",
			'classes' =>  "basic",
			'popular' =>   "",
			'list'    =>   array("Landing Page","Visual Branding")

		],
		[
			'title'   =>  "Standard",
			'head'    =>  "$500",
			'button'  =>  "Buy Now",
			'classes' =>  "standard",
			'popular' =>  "ribbon ribbon-top-right",
			'list'    =>   array("Landing Page","Visual Branding","Web design")

		],
		[
			'title'   =>  "Premium",
			'head'    =>  "$1k",
			'button'  =>  "Buy Now",
			'classes' =>  "premium",
			'popular' =>   "",
			'list'    =>   array("Landing Page","Visual Branding","Web design","Market Research")

		]
	];
?>
        <!-- pricing section -->

<div id="packages-section" class="page-section">
	<h2><?php echo $heading; ?></h2>
	<div class="packages-table">
		<?php
			foreach($prices as $price){
		?>
			<div class="package <?php echo $price['classes'] ?>">
				<div class="<?php echo $price['popular'] ?>"><span></span></div>
				<h3 class="title"><?php echo $price['title']; ?></h3>
				<hr>
				<h3 class="head"><?php echo $price['head']; ?></h3>
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
					<a href="#"><?php echo $price['button']; ?></a>
				</div>
			</div>
		<?php
			}
		?>
	</div><!--  closing pricing-table -->

</div> <!-- closing pricing-section -->