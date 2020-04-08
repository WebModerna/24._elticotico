<?php
/**
 * A unique identifier is defined to store the options in the database and reference them from the theme.
 */
/*function optionsframework_option_name() {
	// Change this to use your theme slug
	return 'options-framework-theme';
}*/
function optionsframework_option_name()
{

	// Nombre de la plantilla
	$themename = wp_get_theme();
	$themename = preg_replace("/W/", "_", strtolower($themename) );

	$optionsframework_settings = get_option( 'optionsframework' );
	$optionsframework_settings['id'] = $themename;
	update_option( 'optionsframework', $optionsframework_settings );
}

/**
 * Defines an array of options that will be used to generate the settings page and be saved in the database.
 * When creating the 'id' fields, make sure to use all lowercase and no spaces.
 *
 * If you are making your theme translatable, you should replace 'webmoderna'
 * with the actual text domain for your theme.  Read more:
 * http://codex.wordpress.org/Function_Reference/load_theme_textdomain
 */


function optionsframework_options()
{
	//Pestaña Configuración general
	$options[]	=	array(
	'name'	=>	__('Configuración General', 'options_framework_theme'),
	'type'	=>	'heading');

	// Cambio del logo
	$options[]	=	array(
	'name'	=>	__('Logotipo', 'options_check'),
	'desc'	=>	__('Selecciona el logo a mostrar en la web, tamaño 100px x 100px.', 'options_check'),
	'id'	=>	'logo_uploader',
	'type'	=>	'upload');

	// CHECKBOX
	$options[]	= array(
		'name' => __( 'Invertir como un espejo la presentación.', 'slideShow' ),
		'id'   => "reverse",
		'type' => 'checkbox',
		// Value can be 0 or 1
		'std'  => 0,
	);

	// CHECKBOX
	$options[]	= array(
		'name' => __( 'Activar presentación tipo carrusel.', 'slideShow' ),
		'id'   => "carrusel",
		'type' => 'checkbox',
		// Value can be 0 or 1
		'std'  => 0,
	);


	/* Pestaña información de contacto ==================== */
	$options[]	=	array(
	'name'	=>	__('Redes Sociales', 'options_framework_theme'),
	'type'	=>	'heading' );

	// Facebook
	$options[] = array(
		'name'			=>	__('Facebook', 'options_framework_theme'),
		'desc'			=>	__('Introduzca el enlace a Facebook.', 'options_framework_theme'),
		'id'			=>	'facebook_contact',
		'class'			=>	'',
		'placeholder'	=>	'www.facebook.com/usuario',
		'type'			=>	'text'
	);


	// Twitter
	$options[] = array(
		'name' => __('Twitter', 'options_framework_theme'),
		'desc' => __('Introduzca su enlace a Twitter.', 'options_framework_theme'),
		'id' => 'twitter_contact',
		'placeholder' => 'www.twitter.com/usuario',
		'class' => '',
		'type' => 'text'
	);

	// Instagram
	$options[] = array(
		'name' => __('Instagram', 'options_framework_theme'),
		'desc' => __('Introduzca su usuario de Instagram.', 'options_framework_theme'),
		'id' => 'instagram_contact',
		'placeholder' => 'usuario',
		'class' => '',
		'type' => 'text'
	);

	// LinkedIn
	$options[] = array(
		'name' => __('LinkedIn', 'options_framework_theme'),
		'desc' => __('Introduzca su enlace al perfil de LinkedIn.', 'options_framework_theme'),
		'id' => 'linkedin_contact',
		'placeholder' => 'www.linkedin.com/usuario',
		'class' => '',
		'type' => 'text'
	);

	/* Panel de la home page =========================================*/
	$options[] = array(
	'name' => __('Datos de Contacto', 'options_framework_theme'),
	'type' => 'heading');

	// Email de contacto
	$options[] = array(
		'name' => __('E-mail de contacto', 'options_framework_theme'),
		'desc' => __('Introduzca el Email de contacto, se mostrará al pie del sitio web en un ícono.', 'options_framework_theme'),
		'id' => 'email_contact',
		'placeholder' => 'tu-mail@lo-que-sea.com.ar',
		'class' => '',
		'type' => 'text'
	);


	// Teléfono Fijo
	$options[] = array(
		'name' => __('Teléfono Fijo', 'options_framework_theme'),
		'desc' => __('Introduzca su teléfono fijo incluyendo el código de área.', 'options_framework_theme'),
		'id' => 'telefono_fijo',
		'placeholder' => '0351-4882213',
		'class' => 'mini',
		'type' => 'text'
	);

	// Teléfono Celular
	$options[] = array(
		'name' => __('Teléfono Celular', 'options_framework_theme'),
		'desc' => __('Introduzca su teléfono celular incluyendo el código de área.', 'options_framework_theme'),
		'id' => 'telefono_celular',
		'placeholder' => '0351-15882213',
		'class' => 'mini',
		'type' => 'text'
	);

	// Campo de texto
	$wp_editor_settings = array(
		'wpautop' => true, // Default
		'textarea_rows' => 7,
		'tinymce' => array( 'plugins' => 'wordpress, wplink' ),
	);

	// Dirección
	$options[] = array(
		'name' => __('Dirección', 'options_framework_theme'),
		'desc' => __('Introduzca calle, número, ciudad y provincia.', 'options_framework_theme'),
		'id' => 'direccion_web',
		'placeholder' => __('Man Sartín 453, Dpto. 3, Las Catitas, Tierra del Agua.', 'webmoderna'),
		'class' => '',
		'type' => 'text',
	);

	
	// Días y horario de atención al público
	$options[] = array(
		'name' => __('Horario de atención', 'options_framework_theme'),
		'desc' => __('Introduzca los días de la semana y el horario de atención al público.', 'options_framework_theme'),
		'id' => 'horario_web',
		'placeholder' => __('Domingos a Martes; de 2 de la tarde a 14hs.', 'webmoderna'),
		'class' => '',
		'type' => 'text'
	);

	return $options;
}
