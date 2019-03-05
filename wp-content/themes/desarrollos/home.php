<?php
/**
* home.php
* @package WordPress
* @subpackage elticotico
* @since elticotico 3.0
* Text Domain: elticotico
*/

get_header();?>

	<!--Aquí va el SlideShow con las fotos y el video en vivo-->     
	<section class="pics">

<?php // WP_Query arguments
		$args = array (
			'post_type'              => array( 'Sliders' ),
			'order'                  => 'ASC',
			'orderby'                => 'menu_order',
		);

		// The Query
		$sliders_home = new WP_Query( $args );

		// The Loop
		if ( $sliders_home->have_posts() )
		{
			while ( $sliders_home->have_posts() )
			{
				$sliders_home->the_post();?>

				<div class="slider__item">
					<figure>
					<?php
					$optional_size	= 'slider-foto';
					$img_id			= get_post_thumbnail_id( $post->ID );
					$image			= wp_get_attachment_image_src( $img_id, $optional_size );
					$alt_text		= get_post_meta( $img_id , '_wp_attachment_image_alt', true );
					$perm			= get_permalink ($post->ID );
					if ( $image )
					{
						echo '<img src="' . $image2[0] . '" class="lazyOwl" alt="' . $alt_text . '" />';
					}
					
					else
					{
						get_the_content();
					}
					;?>
					</figure>
				</div>
					<div class="slider__home__leyenda gradient">
						<?php echo $alt_text;?>
					</div>
				</div>

			<?php	;};
			} else { ?>

				<div class="slider__item">
					<figure>
						<img class="lazyOwl" src="<?php bloginfo('stylesheet_directory');?>/images/marisco2.jpg" alt="imagen" />
					</figure>
					<div class="slider__home__leyenda gradient">
						Algo para decir
					</div>
				</div>
				<div class="slider__item">
					<figure>
						<img class="lazyOwl" src="<?php bloginfo('stylesheet_directory');?>/images/marisco3.jpg" alt="imagen" />
					</figure>
					<div class="slider__home__leyenda gradient">
						Algo para decir
					</div>
				</div>

		<?php	}

		// Restore original Post Data
		wp_reset_postdata();?>

	</section>

<?php get_footer(); ?>