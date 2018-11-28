$(document).ready(function(){
    $(".BarrMenu").ready(function(){
        $(".BarrMenu").load("Menu_Administrador.jsp .BarraMenuAdmin",function(dato){
            $(this).html(dato);
        }); 
        $(".BarrMenu").load("Menu_Administrador.jsp .BarraMenuAdmin",function(dato){
            $(this).jsp(dato);
            $(dato).hide;
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
        
        //Actualizar
        $(".CodigoMascota");
        $(".FotoMascota");
        $(".Tipo_Mas");
        $(".Nombre_Mascota");
        $(".FechaNacimiento");
        $(".ColorMascota");
        $(".RazaMascota");
        $(".GeneroMascota");
        
        $(".btn-Actualizar").click(function(){    
            
            var x = $(".btn-Actualizar").index(this);
            var CoMas = $(".CodigoMascota").eq(x);
            var FoM = $(".FotoMascota").eq(x);
            var TiM = $(".Tipo_Mas").eq(x);
            var NoM = $(".Nombre_Mascota").eq(x);
            var FeM = $(".FechaNacimiento").eq(x);
            var CoM = $(".ColorMascota").eq(x);
            var RaM = $(".RazaMascota").eq(x);
            var GeM = $(".GeneroMascota").eq(x);
            
            var Act = 2;
            var CoMa = $(CoMas).val();
            var FMa = $(FoM).val();
            var TMa = $(TiM).val();
            var NMa = $(NoM).val();
            var FeMa = $(FeM).val();
            var CMa = $(CoM).val();
            var RMa = $(RaM).val();
            var GMa = $(GeM).val();
            $.ajax({
                url: "Servlet_Mascota",
                data: {
                    Opcion: Act,
                    CodigoMascota: CoMa,
                    FotoMascota: FMa,
                    Tipo_Mas: TMa,
                    Nombre_Mascota: NMa,
                    FechaNacmiento: FeMa,
                    ColorMascota: CMa,
                    RazaMascota: RMa,
                    GeneroMascota: GMa

                },
                success:function(result){
                    $("#weather-temp").html("<strong>" + result + "</strong> degrees");
		}
            })
        });
        
        //Eliminar
        $(".btn-Eliminar").click(function(){
            
            var x = $(".btn-Eliminar").index(this);
            var CoMas = $(".CodigoMascota").eq(x);
            
            var Eli = 3;
            var CoMa = $(CoMas).val();
            
            $.ajax({
                url: "Servlet_Mascota",
                data: {
                    Opcion: Eli,
                    CodigoMascota: CoMa

                },
                success:function(result){
                    $("#weather-temp").html("<strong>" + result + "</strong> degrees");
		}
            })
        });
        
        //Insertar
        $(".Codigo");
        $(".Foto_M");
        $(".Tipo_Mascota");
        $(".Nombre_M");
        $(".FechaNacimiento_M");
        $(".Color_M");
        $(".Raza_M");
        $(".Sexo_M");
        $(".Estado_M");
        $(".Duenno_M");
        
        
        $(".btn-Insertar").click(function(){    
            
            var x = $(".btn-Actualizar").index(this);
            var CoMas = $(".Codigo").eq(x);
            var FoM = $(".Foto_M").eq(x);
            var TiM = $(".Tipo_Mascota").eq(x);
            var NoM = $(".Nombre_M").eq(x);
            var FeM = $(".FechaNacimiento_M").eq(x);
            var CoM = $(".Color_M").eq(x);
            var RaM = $(".Raza_M").eq(x);
            var GeM = $(".Sexo_M").eq(x);
            var EsM = $(".Estado_M").eq(x);
            var DuM = $(".Duenno_M").eq(x);
            
            var Ins = 1;
            var CoMa = $(CoMas).val();
            var FMa = $(FoM).val();
            var TMa = $(TiM).val();
            var NMa = $(NoM).val();
            var FeMa = $(FeM).val();
            var CMa = $(CoM).val();
            var RMa = $(RaM).val();
            var GMa = $(GeM).val();
            var EMa = $(EsM).val();
            var DMa = $(DuM).val();
            $.ajax({
                url: "Servlet_Mascota",
                data: {
                    Opcion: Ins,
                    Codigo: CoMa,
                    Foto_M: FMa,
                    Tipo_Mascota: TMa,
                    Nombre_M: NMa,
                    FechaNacimiento_M: FeMa,
                    Color_M: CMa,
                    Raza_M: RMa,
                    Sexo_M: GMa,
                    Estado_M: EMa,
                    Duenno_M: DMa

                },
                success:function(result){
                    $("#weather-temp").html("<strong>" + result + "</strong> degrees");
		}
            })
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

