<?php
/**
* footer.php
* @package WordPress
* @subpackage slideShow
* @since slideShow 2.0
* Text Domain: slideShow
*/

// Variables a utilizar
$horario_web	        =	of_get_option( 'horario_web', '' );
$instagram				=   of_get_option( 'instagram', '' );
$facebook_contact		=	of_get_option( 'facebook_contact', '' );
$twitter_contact		=	of_get_option( 'twitter_contact', '' );
$linkedin_contact		=	of_get_option( 'linkedin_contact', '' );
$direccion_web		    =	of_get_option( 'direccion_web', '' );
$email		            =	of_get_option( 'email_contact', '');
$telefono_celular		=	of_get_option( 'telefono_celular', '');
$telefono       		=	of_get_option( 'telefono_fijo', '');
?>
        </main>
        <!-- Pie de página -->
        <footer class="pie_pagina">
                <?php
                if ($horario_web && $direccion_web && $telefono )
                {
                    echo $horario_web.' - '.$direccion_web.' - '.$telefono.'<br />';
                }
                if ( $facebook_contact )
                {
                    echo '<a target="_blank" class="icon-facebook3" href="//' . $facebook_contact . '" title="Facebook"></a>';
                };
                if ( $linkedin_contact )
                {
                    echo '<a target="_blank" class="icon-linkedin1" href="//' . $linkedin_contact . '" title="LinkeIn"></a>';
                };
                if ( $twitter_contact )
                {
                    echo '<a target="_blank" class="icon-twitter2" href="//' . $twitter_contact . '" title="Twitter"></a>';
                };
                if ( $instagram )
                {
                    echo '<a target="_blank" class="icon-instagram1" href="//' . $instagram . '" title="Instagram"></a>';
                };
                if ( $email )
                {
                    echo '<a target="_blank" class="icon-gmail" href="mailto:' . $email . '" title="E-Mail"></a>';
                };
                if ( $telefono_celular )
                {
                    echo '<a target="_blank" class="icon-whatsapp2" href="whatsapp://send?phone=' . $telefono_celular . 'Hola. Quiero reservar una mesa." title="WhatsApp"></a>';
                };
                ?>
                <br /><small><?php echo date("Y");?> Todos los derechos reservados - Realizado por <a href="//webmoderna.com.ar" title="WebModerna | Estudio Contable y agencia web" target="_blank" class="pie_pagina__enlace">
                <img src="<?php bloginfo('stylesheet_directory');?>/img/webmoderna.png" alt="WebModerna | Estudio Contable y agencia web"></a></small>
		</footer>
    </section>
    <script src="<?php bloginfo('stylesheet_directory');?>/js/scripts.js"></script>
</body>
</html>