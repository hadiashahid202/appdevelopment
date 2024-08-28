<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$database = "businessdb";

	$conn = new mysqli($servername, $username, $password, $database);

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}

	$sql = "SELECT title, price, button_text, classes, popular, features FROM packages";
	$result = $conn->query($sql);
?>

<div id="packages-section" class="page-section">
    <h2>Pricing</h2>
    <div class="packages-table">
        <?php
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $features = explode(',', $row['features']);
                ?>
                <div class="package <?php echo $row['classes']; echo ($row['popular']) ? ' popular' : '';?>">
                    <?php if ($row['popular']) { ?>
                        <div class="ribbon ribbon-top-right"><span></span></div>
                    <?php } ?>
                    <h3 class="title"><?php echo $row['title']; ?></h3>
                    <hr>
                    <h3 class="head"><?php echo $row['price']; ?></h3>
                    <ul>
                        <?php foreach ($features as $feature) { ?>
                            <li><i class="fa-solid fa-circle-check"></i> <?php echo $feature; ?></li>
                        <?php } ?>
                    </ul>
                    <div class="package-btn">
                        <a href="#"><?php echo $row['button_text']; ?></a>
                    </div>
                </div>
                <?php
            }
        } else {
            echo "<p>No packages found.</p>";
        }
        $conn->close();
        ?>
    </div><!--  closing packages-table -->
</div><!-- closing packages-section -->
