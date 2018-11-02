$(document).ready(function(){
	$(".form_Mascota").hide();
	$(".Registrar_M").click(function(){
		$(".form_Mascota").slideToggle();  
		$(".Position_Mascota").slideUp();

	});
	$(".Position_Mascota").hide();
	$(".Tabla_M");
	$(".Actualizar_M").click(function(){
		$(".form_Mascota").slideUp();
		$(".Position_Mascota").slideToggle();
	});

	function Obtener_Registro(dato){
		var Variable = dato;
		$.ajax({
			url: "../Controlador/Mascota_C.php",
			type: "POST",
			datatype: "php",
			data: {
				dato:Variable
			},
		})
		.done(function(result){
			$(".Tabla_M").html(result);
		})
	}

	$(document).on('keyup','.Busqueda',function(){
	var dato = $(this).val();
	if (dato != "") {
		Obtener_Registro(dato);
	}else {
		Obtener_Registro();
	}
	});
});

