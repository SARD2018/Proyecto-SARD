$(document).ready(function(){
    
        $(".BarrMenu").ready(function(){
        $(".BarrMenu").load("Menu_Administrador.jsp .BarraMenuAdmin",function(dato){
            $(this).html(dato);
        }); 
        $(".BarrMenu").load("Menu_Administrador.jsp .BarraMenuAdmin",function(dato){
            $(this).jsp(dato);
            $(dato).hide();
        });
        });
        
	$(".Datos_T").hide();	
	
        $(".Registrar_A").hide();	
	$(".form_Administrador").hide();	
	$(".Actualizar_A").hide();
	$(".Filtro_Admin").hide();
	$(".T_Administrador").hide();
	$(".btn_A_E").hide();
	

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
	$(".T_Veterinaria").hide();
	$(".T_Veterinaria_4").hide();
	
	$(".Registrar_C").hide();
	$(".form_Ciudadano").hide();
	$(".Actualizar_C").hide();
	$(".Filtro_Ciudadano").hide();
	$(".T_Ciudadano").hide();

        
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
                
                $(".Nombre_A").click(function(){
                    var Index= $(".Nombre_A").index(this);
                    var Datos= $(".Datos_T").eq(Index);
                    var Boton= $(".btn_A_E").eq(Index);
                    Datos.slideToggle();
                    Boton.slideToggle(); 
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
                
                 $(".Nombre").click(function(){
                    var Index1= $(".Nombre").index(this);
                    var Datos1= $(".Datos_T").eq(Index1);
                    var Boton1= $(".btn_A_E").eq(Index1);
                    Datos1.slideToggle();
                    Boton1.slideToggle(); 
		});           

	$(".SVeterinaria").click(function(){
	$(".Registrar_V").slideToggle();
	$(".Actualizar_V").slideToggle();
	});

		$(".Registrar_V").click(function(){
		$(".form_Veterinaria").slideToggle();
                });

		$(".Actualizar_V").click(function(){
		$(".T_Veterinaria_4").slideToggle();
		$(".Datos_T").hide();
                $(".btn_A_E").hide();
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
                    $(".Datos_T").hide();
                    $(".btn_A_E").hide();
		});
                
                
       
});