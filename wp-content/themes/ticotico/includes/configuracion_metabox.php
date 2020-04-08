<?php
/**
 * Registering meta boxes
 *
 * All the definitions of meta boxes are listed below with comments.
 * Please read them CAREFULLY.
 *
 * You also should read the changelog to know what has been changed before updating.
 *
 * For more information, please visit:
 * @link http://metabox.io/docs/registering-meta-boxes/
 */


// Es para las páginas y posts
add_filter( 'rwmb_meta_boxes', 'meta_paginas_register_meta_boxes' );
function meta_paginas_register_meta_boxes( $meta_boxes )
{
	// Better has an underscore as last sign
	$prefix = 'meta_paginas_';
	// 1st meta box
	$meta_boxes[] = array(
		// Meta box id, UNIQUE per meta box. Optional since 4.1.5
		'id'         => 'estandard',
		// Meta box title - Will appear at the drag and drop handle bar. Required.
		'title'      => __( 'Videos en vivo', 'slideShow' ),
		// Post types, accept custom post types as well - DEFAULT is 'post'. Can be array (multiple post types) or string (1 post type). Optional.
		'post_types' => array( 'post' ),
		// 'post_types' => array( 'home_page' ),
		// Where the meta box appear: normal (default), advanced, side. Optional.
		'context'    => 'normal',
		// Order of meta box: high (default), low. Optional.
		'priority'   => 'high',
		// Auto save: true, false (default). Optional.
		'autosave'   => true,
		// List of meta fields
		'fields'     => array(

		// TEXTAREA
			array(
				'name' => __( 'WebCam', 'slideShow' ),
				'desc' => __( 'Insertar URL, enlace o código de la webcam en vivo.', 'slideShow' ),
				'id'   => "meta_paginas_meta_descripcion",
				'type' => 'textarea',
				'rows' => 4,
			),
		));
	return $meta_boxes;
};