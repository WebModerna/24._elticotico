<?php
/**
* header.php
* @package WordPress
* @subpackage slideShow
* @since slideShow 2.0
* Text Domain: slideShow
*/
?>
<!DOCTYPE html>
<html <?php language_attributes();?>>
<head>
    <meta charset="<?php bloginfo('charset');?>" />
    <title><?php bloginfo('name');?></title>
	<meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=2, user-scalable=yes" />
    <link rel="shortcut icon" href="<?php bloginfo('stylesheet_directory');?>/img/favicon.png" />
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory');?>/css/style.css" />

	<meta name="description" content="<?php bloginfo('description');?>" >
    
    <!-- Los Open Graph del féisbuc -->
	<meta property="og:type" content="<?php echo get_site_url();?>" />
	<meta property="og:title" content="<?php bloginfo('name');?>" />
	<meta property="og:description" content="<?php bloginfo('description');?>" />
	<meta property="og:image" content="<?php bloginfo('stylesheet_directory');?>/img/screenshot.png" />
	<meta property="og:image:width" content="800" />
	<meta property="og:image:height" content="600" />
	<meta property="og:url" content="<?php echo get_site_url();?>" />
	<meta property="og:site_name" content="<?php bloginfo('name');?>" />
    
    <?php
    $reverse        = of_get_option( 'reverse', '' );
    $logo_uploader  = of_get_option( 'logo_uploader', '' );
    
    if( $reverse == 1 )
    {
        echo "<style>";
        echo ".slider__cuerpo {
            -moz-transform: scaleX(-1);
			-o-transform: scaleX(-1);
			-webkit-transform: scaleX(-1);
			transform: scaleX(-1);
			filter: FlipH;
        }";
        echo "</style>";
    }?>
</head>
<body>
	<!-- cuerpo de toda la web -->
	<section class="slider__cuerpo">
        <header class="encabezado">
            <h1 class="encabezado__titular">
                <a href="<?php bloginfo('url')?>" title="<?php bloginfo("the_title");?>" class="encabezado__enlace">
                <?php if($logo_uploader) {
                    echo '<img class="encabezado__logotipo" src="'.$logo_uploader.'" alt="'.get_the_title().'" />';
                }?>
                <?php bloginfo("the_title");?></a>
            </h1>
        </header>
        <main>