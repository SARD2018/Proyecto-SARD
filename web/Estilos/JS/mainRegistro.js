$(document).ready(function(){

	$(".Registrar_A").hide();	
	$(".form_Administrador").hide();	
	$(".Actualizar_A").hide();
	$(".Filtro_Admin").hide();
	$(".T_Administrador").hide();
	

	$(".Registrar_AmbienteySalud").hide();
	$(".form_AmbienteySalud").hide()
	$(".Actualizar_AmbienteySalud").hide();
	$(".Ambiente").hide();
	$(".Filtro_Ambiente").hide();
	$(".T_Ambiente").hide();
	$(".Salud").hide();
	$(".Filtro_Salud").hide();
	$(".T_Salud").hide();
	
	$(".Registrar_V").hide();
	$(".form_Veterinaria").hide();
	$(".Actualizar_V").hide();
	$(".Filtro_Veterinaria").hide();
	$(".T_Veterinaria_1").hide();
	$(".T_Veterinaria_2").hide();
	
	$(".Registrar_C").hide();
	$(".form_Ciudadano").hide();
	$(".Actualizar_C").hide();
	$(".Filtro_Ciudadano").hide();
	$(".T_Ciudadano_1").hide();
	$(".T_Ciudadano_2").hide();


	$(".SAdministrador").click(function(){
	$(".Registrar_A").slideToggle();
	$(".Actualizar_A").slideToggle();
	});

		$(".Registrar_A").click(function(){
		$(".form_Administrador").slideToggle();
		});

		$(".Actualizar_A").click(function(){
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
		$(".Ambiente").slideToggle();
		$(".Salud").slideToggle();
		});	
		$(".Ambiente").click(function(){
		$(".T_Ambiente").slideToggle();
		});	
		$(".Salud").click(function(){
		$(".T_Salud").slideToggle();
		});	

	$(".SVeterinaria").click(function(){
	$(".Registrar_V").slideToggle();
	$(".Actualizar_V").slideToggle();
	});

		$(".Registrar_V").click(function(){
		$(".form_Veterinaria").slideToggle();
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