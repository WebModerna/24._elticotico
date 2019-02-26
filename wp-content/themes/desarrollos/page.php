<?php
/**
* page.php
* @package WordPress
* @subpackage elticotico
* @since elticotico 3.0
* Text Domain: elticotico
*/

get_header();?>

	<!--Aquí va el SlideShow con las fotos y el video en vivo-->     
	<section class="pics">

		<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
			<?php the_content();?>
	
		<?php endwhile; ?>

		<?php endif; ?>

	</section>

<?php get_footer(); ?>