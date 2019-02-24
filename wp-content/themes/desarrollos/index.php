<?php get_header(); ?>
<body <?php body_class(); ?>>
<!-- #logo -->
<h1 id="logo">
   <a href="<?php echo home_url(); ?>" 
      title="<?php bloginfo('description')?>">
      <?php bloginfo('name');?>
   </a>
</h1>
    <noscript>
        <p>
            Necesitas si o si tener activado JavaScript en tu navedador
        </p>
    </noscript>
<?php wp_nav_menu( 
     array(
          'theme_location' => 'MenuPrincipal', 
          'container' => 'false' 
          )); 
?>
<article>
    <div class="borde" align="center">
       <img src="<?php echo get_template_directory_uri();?>/images/logo.png" alt="Tico Tico" align="center" />
     </div>
    <section class="pics">
    </section>
</article>
<?php get_footer(); ?>