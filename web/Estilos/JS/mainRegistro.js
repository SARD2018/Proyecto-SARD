$(document).ready(function(){

$(".Registrar_A").hide();	
	$(".form_Administrador").hide();	
	$(".Actualizar_A").hide();
	$(".Position_Administrador").hide();
	$(".Filtro_Administrador").hide();
	$(".T_Administrador").hide();

	$(".Registrar_AmbienteySalud").hide();
	$(".form_AmbienteySalud").hide()
	$(".Actualizar_AmbienteySalud").hide();
	
	$(".Registrar_V").hide();
	$(".Veterinaria").hide();
	$(".Actualizar_V").hide();
	
	$(".Registrar_C").hide();
	$(".form_Ciudadano").hide();
	$(".Actualizar_C").hide();


	$(".SAdministrador").click(function(){
	$(".Registrar_A").slideToggle();
	$(".Actualizar_A").slideToggle();
	});

		$(".Registrar_A").click(function(){
		$(".form_Administrador").slideToggle();
		});

		$(".Actualizar_A").click(function(){
		$(".Position_Administrador").slideToggle();	
		$(".Filtro_Administrador").slideToggle();	
		$(".T_Administrador").slideToggle();
		});		

	$(".SAmbienteySalud").click(function(){
	$(".Registrar_AmbienteySalud").slideToggle();
	$(".Actualizar_AmbienteySalud").slideToggle();
	});

		$(".Registrar_AmbienteySalud").click(function(){
		$(".form_AmbienteySalud").slideToggle();
		});

		$(".Actualizar_AmbienteySalud").click(function(){
		$(".T_AmbienteySalud").slideToggle();
		});	

	$(".SVeterinaria").click(function(){
	$(".Registrar_V").slideToggle();
	$(".Actualizar_V").slideToggle();
	});

		$(".Registrar_V").click(function(){
		$(".").slideToggle();
		});

		$(".Actualizar_V").click(function(){
		$(".T_Veterinaria").slideToggle();
		});		


	$(".SCiudadano").click(function(){
	$(".Registrar_C").slideToggle();
	$(".Actualizar_C").slideToggle();
	});

		$(".Registrar_C").click(function(){
		$(".form_Ciudadano").slideToggle();
		});

		$(".Actualizar_C").click(function(){
		$(".T_Ciudadano").slideToggle();
		});		
});