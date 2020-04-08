window.addEventListener("load", cargador);

function cargador()
{
	// El arreglo con cada uno de los sliders.
	const slidersItems = document.querySelectorAll(".slider__item");
	const slidersIframes = document.getElementsByTagName("iframe");

	// Animación de entrada y salida
	let animacionEntrada, animacionSalida;
    
    // Agregando los z-index de acuerdo a su orden
	for( let i = 0; i < slidersItems.length; i++ )
	{
		// slidersItems[i].style.zIndex = slidersItems.length - i;

		// Controlando si tiene una animación o no
		if( slidersItems[i].classList.contains("animacion__carrousel") )
		{
			animacionEntrada = "slideInRight";
			animacionSalida = "slideOutLeft";
		}
		else if( slidersItems[i].classList.contains("animacion__fade") )
		{
			animacionEntrada = "fadeIn";
			animacionSalida = "fadeOut";
		}
	}

	// Agrandando los iframes
	for( let i = 0; i < slidersIframes.length; i++ )
	{
		slidersIframes[i].height = "100%";
		slidersIframes[i].width = "auto";
	}


	
	// Función que se autoejecuta cada 3 segundos
	let i = 0;
	function temporizadorInfinito()
	{
		setTimeout(temporizadorInfinito, 5000);
		izq();

		// Control del contador
		i = ( i + 1 ) % slidersItems.length;
		der();
		console.log(slidersItems[i]);
	}
	temporizadorInfinito();

	// Desplazamiento hacia la izquierda y desaparece
	function izq()
	{
		slidersItems[i].classList.add(animacionSalida);
		slidersItems[i].classList.remove(animacionEntrada);
	}

	// Desplazamiento desde la derecha y se queda en el centro 
	function der()
	{
		slidersItems[i].classList.add(animacionEntrada);
		slidersItems[i].classList.remove(animacionSalida);
	}
}