<?php
/**
* footer.php
* @package WordPress
* @subpackage elticotico
* @since elticotico 3.0
* Text Domain: elticotico
*/
?>
		<!-- Fin del slider -->
		</article>

		<!--Footer-->
		<footer class="footer">
			<div>
				<p class="copyright">
				Copyright &copy;<?php the_time('Y');?> <?php bloginfo('name');?>

				<a href="<?php bloginfo('url')?>" target="_blank"><?php bloginfo('name');?></a> | 
				Powered by <a class="webmoderna" href="//www.webmoderna.com.ar" target="_blank">WebModerna</a>
				</p>
			</div>
		</footer>
	</div><!-- fin del wrapper -->
</div>

		<script type="text/javascript" src="<?php bloginfo('stylesheet_directory');?>/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="<?php bloginfo('stylesheet_directory');?>/js/jQueryCyclePlugin.js"></script>
		<script type="text/javascript" src="<?php bloginfo('stylesheet_directory');?>/js/prefixfree.min.js"></script>
		<script type="text/javascript">
			$('.pics').cycle({ 
				fx: 'fade', 
				pause: 1 
			});
		</script>
		<?php wp_footer(); ?>
	</body>
</html>