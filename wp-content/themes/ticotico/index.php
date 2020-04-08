<?php
/**
* index.php
* @package WordPress
* @subpackage slideShow
* @since slideShow 2.0
* Text Domain: slideShow
*/
?>
<?php get_header();?>
 
            <div class="slider__contenedor">

            <?php
            // Una variable de cantidad de post publicados.
            $cantidad = 1 + wp_count_posts()->publish;

            // El loop de WordPress
            if ( have_posts() ) : while ( have_posts() ) : the_post();

            // Variables de metaboxes
            $embebido = rwmb_meta('meta_paginas_meta_descripcion', '');
            $carrusel = of_get_option( 'carrusel', '' );
            $cantidad = $cantidad - 1;?>

                <div class="slider__item <?php
                    // Condicional de una clase en base al slideshow elegido
                    if($carrusel)
                    {
                        echo "animacion__carrousel";
                    } else {
                        echo "animacion__fade";
                    }
                ;?> animated" style="z-index: <?php echo $cantidad;?>">
                    <div class="slider__item__leyenda">
                        <div class="slider__item__leyenda__contenido">
                            <strong><?php the_title();?></strong><br /><?php echo get_the_content();?>
                        </div>
                    </div>
                    <?php if( has_post_thumbnail() )
                    {
						the_post_thumbnail( 'custom-thumb-2100-x' );
                    }
                    // Condicional si hay algún emebido de una webcam o video en vivo
                    if($embebido)
                    {
                        echo $embebido;
                    }?>
                </div>
            <?php endwhile;
            
            // Condicional si no hay nada
                else:
            ?>
                <div class="slider__item animacion__fade animated">
                    <div class="slider__item__leyenda">
                        <div class="slider__item__leyenda__contenido">
                            <strong>Cazuela de Mariscos</strong>
                            <br />$1.345
                        </div>
                    </div>
                    <img alt="slider" src="<?php bloginfo('stylesheet_directory');?>/img/img6.jpg" />
                </div>
                <div class="slider__item animacion__fade animated">
                    <div class="slider__item__leyenda">
                        <div class="slider__item__leyenda__contenido">
                            <strong>Lorem ipsum dolor sit</strong>
                            <br />Minus perferendis
                        </div>
                    </div>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/6DB_p2sMJTE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
                <div class="slider__item animacion__fade animated">
                    <div class="slider__item__leyenda">
                    <div class="slider__item__leyenda__contenido">
                            <strong>Lorem ipsum dolor sit</strong>
                            <br />Minus perferendis
                        </div>
                    </div>
                    <img alt="slider" src="<?php bloginfo('stylesheet_directory');?>/img/img7.jpg" />
                </div>

		    <?php endif; ?>
            </div>

<?php get_footer();?>        