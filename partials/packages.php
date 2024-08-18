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