<?php
/**
* header.php
* @package WordPress
* @subpackage elticotico
* @since elticotico 3.0
* Text Domain: elticotico
*/

// Variables importantes
$background_de_la_web  = of_get_option('background_de_la_web', '');
$logo_uploader = of_get_option('logo_uploader', '');
?>
<!DOCTYPE html>
<html <?php language_attributes();?>>
<head>
	<meta charset="<?php bloginfo('charset');?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.5, user-scalable=yes" />
	<title><?php bloginfo('name');?></title>
	<meta name="description" content="<?php bloginfo('description');?>" >
	<link rel="shortcut icon" type="image/x-icon" href="<?php bloginfo('stylesheet_directory');?>/images/favicon.png" />
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_directory');?>/style.css" />
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_directory');?>/css/index.css" />
	<style type="text/css">
		body
		{
			background-color: #456;
			<?php if ( $background_de_la_web ) { ?>
			background-image: url("<?php echo $background_de_la_web;?>");
			<?php };?>
			background-repeat: no-repeat;
			background-position: 50% 50%;
			background-size: cover;
		}
	</style>
	<?php wp_head();?>
</head>

<body <?php body_class();?>>
	<div class="wrapper">
	<noscript>
		<p>Necesitás si o si tener activado JavaScript en tu navedador</p>
	</noscript>

	<article>

		<!--Aquí va el logo-->
		<div class="borde logotipo">
			<?php if( $logo_uploader ) { ?>

			<img src="<?php echo $logo_uploader; ?>" alt="Tico Tico" />

			<?php } else { ?>

			<img src="<?php bloginfo('stylesheet_directory');?>/images/logotipo.png" alt="Tico Tico" />

			<?php };?>
		</div>