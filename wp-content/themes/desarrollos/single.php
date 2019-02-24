<?php get_header(); ?>
<!--Index-->
<body <?php body_class(); ?>>
<!-- #logo -->
<h1 id="logo">
   <a href="<?php echo home_url(); ?>" 
      title="<?php bloginfo('description')?>">
      <?php bloginfo('name');?>
   </a>
</h1>
<!-- Final #logo -->
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
       <img src="<?php bloginfo('stylesheet_directory');?>/images/logo.png" alt="Tico Tico" align="center" />
     </div>
    <?php 
    $query = new WP_Query();
    $query->query('posts_per_page=5&cat=1');
    $post_count = $query->post_count;
    ?>
    <section class="pics">
    	<?php 
is_page('home')
?>
    </section>
</article>
<?php wp_footer(); ?>