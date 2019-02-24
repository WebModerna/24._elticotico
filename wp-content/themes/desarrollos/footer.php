		<!--Footer-->
		<footer>
			<div>
				<p class="copyright">
				Copyright &copy;<?php the_time('Y');?> <?php bloginfo('name');?>

				<a href="<?php bloginfo("url_2") ?>" target="_blank"><?php bloginfo('name');?></a> | 
				Powered by <a class="webmoderna" href="http://www.webmoderna.com.ar" target="_blank">WebModerna</a>
				</p>
			</div>
		</footer>

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