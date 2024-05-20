<!DOCTYPE html>
<html lang="en"> 
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<?php
    wp_head(); 
    ?>
 </head>
 
 <body id="body">
    <div class = "background">
    <div class="overlay"></div>

	<nav class="navbar">
		<div class="navdiv">
        <div class="logo" style="z-index: 1;">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/CaseGuardLogo.png" alt="Your Logo">
            </a>
        </div>
			<ul style="z-index: 1;">
				<button class="button-2" onclick="scrollToNextSection();"><a href="#">Button 1</a></button>
				<button class="button-1" onclick="scrollToNextSection();" >Button 2</button>
			</ul>
		</div>
	</nav>
