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
    
	$(".form_Mascota").hide();
	$(".Registrar_M").click(function(){
		$(".form_Mascota").slideToggle();  
		$(".Position_Mascota").slideUp();
                $(".Position_Informacion").slideUp();
		$(".btns").slideUp();

	});
	$(".Position_Mascota").hide();
	$(".Position_Informacion").hide();
	$(".btns").hide();
	$(".Actualizar_M").click(function(){
		$(".form_Mascota").slideUp();
		$(".Position_Mascota").slideToggle();
                $(".Position_Informacion").slideUp();
		$(".btns").slideUp();
	});
        $(".NombreMascota").click(function(){
            var Pos = $(".NombreMascota").index(this); 
            var asi = $(".Position_Informacion").eq(Pos); 
            var asibtn = $(".btns").eq(Pos); 
            
            $(asi).slideToggle();
            $(asibtn).slideToggle();
	});
        
/*
	function Obtener_Registro(dato){
		$.ajax({
			url: "Servelet_Mascota",
			data: {
				variable:dato
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
        */
});

