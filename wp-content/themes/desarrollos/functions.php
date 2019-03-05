<?php
// Eliminar cajas innecesarias del Dashboard
require_once "includes/23._eliminar_cajas.php";

// Configuración del slider
require_once "includes/03._el_slider.php";

// url relativas
require_once "includes/14._url_relativas.php";

// Regenerador de imágenes
require_once "includes/04._regenerate-thumbnails.php";

// Cargar Panel de Opciones
if ( !function_exists( 'optionsframework_init' ) )
{
	define( 'OPTIONS_FRAMEWORK_DIRECTORY', get_template_directory_uri() . '/includes/' );
	require_once dirname( __FILE__ ) . '/includes/05._options-framework.php';
}

add_action( 'optionsframework_custom_scripts', 'optionsframework_custom_scripts' );

function optionsframework_custom_scripts() { ?>

<script type="text/javascript">
jQuery(document).ready(function()
{
	jQuery('#example_showhidden').click(function()
	{
		jQuery('#section-example_text_hidden').fadeToggle(400);
	});
	if (jQuery('#example_showhidden:checked').val() !== undefined)
	{
		jQuery('#section-example_text_hidden').show();
	}
});
</script>
<?php
}

/*   Configurar Imágenes Thumbnails WP2.9+*/

if ( function_exists( 'add_theme_support' ) )
{
	add_theme_support( 'post-thumbnails' );//Agrega soporte
	add_image_size( 'video-thumbnail', 66, 56, true ); // Videos list thumbnails
	add_image_size( 'index-thumbnail', 170, 160, true ); // Blog thumbnail
	add_image_size( 'slider-thumbnail', 400, 190, true ); // Slider thumbnail
	add_image_size( 'slider-foto', 1300, 890, true ); // Slider
}

// Remover versión del WordPress
function remove_wp_version() { return ''; };
add_filter( 'the_generator', 'remove_wp_version' );

// Modifica el pie de página del panel de administarción
function remove_footer_admin()
{
	echo _e('Desarrollado por', 'webmoderna') . ' <a title="'.__('WebModerna | el futuro de la web', 'webmoderna') . '" href="//www.webmoderna.com.ar" target="_blank"> <img title="WebModerna" src="' . get_bloginfo("stylesheet_directory") . '/images/webmoderna.png" width="150" style="display:inline-block;vertical-align:middle;" alt="WebModerna" /></a>';
};
add_filter('admin_footer_text', 'remove_footer_admin');

// Desactivar el script de embebidos
function my_deregister_scripts()
{
	wp_deregister_script( 'wp-embed' );
}
add_action( 'wp_footer', 'my_deregister_scripts' );


// Agregando un favicon al área de administración
function admin_favicon()
{
	echo '<link rel="shortcut icon" type="image/x-icon" href="' . get_bloginfo('stylesheet_directory') . '/images/favicon.png" />';
}
add_action('admin_head', 'admin_favicon', 1);

// Deshabilitar Iconos Emoji
remove_action('wp_head', 'print_emoji_detection_script', 7);
remove_action('wp_print_styles', 'print_emoji_styles');
add_filter( 'emoji_svg_url', '__return_false' );

// Remover la API REST
function remove_api ()
{
remove_action( 'wp_head', 'rest_output_link_wp_head', 10 );
remove_action( 'wp_head', 'wp_oembed_add_discovery_links', 10 );
remove_action( 'template_redirect', 'rest_output_link_header', 11, 0 );
}
add_action( 'after_setup_theme', 'remove_api' );

// Remover cosas raras de Wordpress
remove_action( 'wp_head', 'wp_resource_hints', 2 );
remove_action( 'wp_head', 'dns-prefetch' );

// Deshabilitar la edición desde otros programas, el link corto y la versión del WP.
remove_action('wp_head', 'rsd_link');
remove_action('wp_head', 'wp_generator');
remove_action('wp_head', 'feed_links', 2);
remove_action('wp_head', 'index_rel_link', 1);
remove_action('wp_head', 'wlwmanifest_link');
remove_action('wp_head', 'feed_links__xtra', 3);
remove_action('wp_head', 'wp_shortlink_wp_head');
remove_action('wp_head', 'parent_post_rel_link', 10, 0);
remove_action('wp_head', 'adjacent_posts_rel_link', 10, 0);
remove_action('wp_head', 'start_post_rel_link', 10, 0);
remove_action('wp_head', 'adjacent_posts_rel_link_wp_head', 10, 0);
remove_action('wp_head', 'rel_canonical');

// Cambiar el logo del login y la url del mismo y el título
function custom_login_logo()
{
	echo '<link rel="shortcut icon" type="image/x-icon" href="' . get_stylesheet_directory_uri() . '/images/favicon.png" />';
	echo '<style type="text/css">
		body.login
		{
			background: #412A1D !important;
			height: 100% !important;
			height: 100vw !important;
		}
		h1
		{
			padding-top: 20px !important;
		}
		h1 a
		{
			background:  #412A1D url(' . get_bloginfo('stylesheet_directory') . '/images/logo.png) center center no-repeat !important;
			background-size: 90% !important;
			border: 1px solid #594A42;
			height: 100px !important;
			overflow: hidden !important;
			width: 320px !important;
		}
		div#login
		{
			padding: 0 !important;
		}
		.message, #loginform, h1 a
		{
			border-radius: 5px;
			-moz-border-radius: 5px;
			-webkit-border-radius: 5px;
		}
		</style>';
};
add_action( 'login_head', 'custom_login_logo', 1 );
function the_url( $url )
{
	return get_bloginfo( 'url' );
}
add_filter( 'login_headerurl', 'the_url' );
function change_wp_login_title()
{
	return get_option('blogname');
}
add_filter( 'login_headertitle', 'change_wp_login_title' );



?>