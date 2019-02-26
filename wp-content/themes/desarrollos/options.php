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
 * If you are making your theme translatable, you should replace 'elticotico'
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
	'name'	=>	__('Logotipo del Sitio Web', 'options_check'),
	'desc'	=>	__('Selecciona el logo a mostrar en la web, tamaño 100px x 100px.', 'options_check'),
	'id'	=>	'logo_uploader',
	'type'	=>	'upload');

	// Cambiar el background
	$options[]	=	array(
	'name'	=>	__('Imagen de fondo', 'options_check'),
	'desc'	=>	__('Selecciona una imagen grande para que se vea de fondo bastante grande', 'options_check'),
	'id'	=>	'background_de_la_web',
	'type'	=>	'upload');

	// Titular del Portfolio de la home
	$options[]	=	array(
		'name'			=>	__('Titular del Portfolio de la home', 'options_framework_theme'),
		'desc'			=>	__('Introduca un titular para el portfolio de la home.', 'options_framework_theme'),
		'id'			=>	'portfolio_home',
		'placeholder'	=>	'Titular de ejemplo...',
		'class'			=>	'',
		'type'			=>	'text',
	);

	// Contenido o mensaje para el porfolio de la home
	$options[]	=	array(
		'name'			=>	__('Mensaje a mostrar en la home', 'options_framework_theme'),
		'desc'			=>	__('Introduzca un contenido o mensaje.', 'options_framework_theme'),
		'id'			=>	'contenido_portfolio_home',
		'placeholder'	=>	'Contenido de ejemplo...',
		'class'			=>	'',
		'type'			=>	'textarea'
	);


	/*====================================================================================*/
	/* =================== Pestaña información de contacto ============================== */
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

	// Skype
	$options[] = array(
		'name' => __('Skype', 'options_framework_theme'),
		'desc' => __('Introduzca su usuario de Skype o email de Outlook.com, Msn, Hotmail (Deben estar habilitados para hacer videoconferencia).', 'options_framework_theme'),
		'id' => 'skype_contact',
		'placeholder' => '"fulano_de_tal" o también "fulano_de_tal@outlook.com"',
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

	// Google+
	$options[] = array(
		'name' => __('Google+', 'options_framework_theme'),
		'desc' => __('Introduzca su enlace a Google+.', 'options_framework_theme'),
		'id' => 'google_plus_contact',
		'placeholder' => 'plus.google.com/usuario',
		'class' => '',
		'type' => 'text'
	);

	// GitHub
	$options[] = array(
		'name' => __('GitHub', 'options_framework_theme'),
		'desc' => __('Introduzca su enlace a GitHub.', 'options_framework_theme'),
		'id' => 'github_contact',
		'placeholder' => 'github.com/usuario',
		'class' => '',
		'type' => 'text'
	);


	$facebook_contact = of_get_option('facebook_contact','');
	$twitter_contact = of_get_option('twitter_contact','');
	$linkedin_contact = of_get_option('linkedin_contact', '');
	$google_plus_contact = of_get_option('google_plus_contact','');
	$email_contact = of_get_option('email_contact','');
	$email_contact_ventas = of_get_option('email_contact_ventas','');
	$background_de_la_web = of_get_option('background_de_la_web','');

	/* ============================================================================== */
	/* Panel de la home page =========================================================*/
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
		'placeholder' => __('Man Sartín 453, Dpto. 3, Las Catitas, Tierra del Agua.', 'elticotico'),
		'class' => '',
		'type' => 'editor',
		'settings' => $wp_editor_settings,
	);
	// Lunes a viernes de 9 a 13 hs y de 16 a 20 hs sábados de 9 a 13 hs.
	// Días y horario de atención al público
	$options[] = array(
		'name' => __('Horario de atención', 'options_framework_theme'),
		'desc' => __('Introduzca los días de la semana y el horario de atención al público.', 'options_framework_theme'),
		'id' => 'horario_web',
		'placeholder' => __('Domingos a Martes; de 2 de la tarde a 14hs.', 'elticotico'),
		'class' => '',
		'type' => 'text'
	);

	return $options;
}
