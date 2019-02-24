<?php
/*   Configurar Imágenes Thumbnails WP2.9+*/

if ( function_exists( 'add_theme_support' ) ) {
   add_theme_support( 'post-thumbnails' );//Agrega soporte
   add_image_size( 'video-thumbnail', 66, 56, true ); // Videos list thumbnails
   add_image_size( 'index-thumbnail', 170, 160, true ); // Blog thumbnail
   add_image_size( 'slider-thumbnail', 400, 190, true ); // Slider thumbnail
}
?>