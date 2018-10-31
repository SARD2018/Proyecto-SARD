$(document).ready(function(){
	$(".Primero").hide();
	$(".Segundo").hide();
	$(".Tercero").hide();
	$(".Acordeon_Mascota").click(function(){
		var posicion = $(".Acordeon_Mascota").index(this);
		var asigp = $(".Primero").eq(posicion);
		var asigs = $(".Segundo").eq(posicion);
		var asigt = $(".Tercero").eq(posicion);
		asigp.slideToggle(400);
		asigs.slideToggle(400);
		asigt.slideToggle(400);
	});
});