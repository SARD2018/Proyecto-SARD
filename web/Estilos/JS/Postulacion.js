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
   
    $(".Info-Mascota").hide();
    $(".Disponibles").mouseenter(function(){
        var Pos = $(".Disponibles").index(this);
        var Asi = $(".Info-Mascota").eq(Pos);
        $(Asi).fadeIn(); 
    });
    $(".Disponibles").mouseleave(function(){
        var Pos = $(".Disponibles").index(this);
        var Asi = $(".Info-Mascota").eq(Pos);
        $(Asi).fadeOut();
    });
    $(".Postulacion_Mascota").hide();
    $(".Disponibles").click(function(){
        var Pos = $(".Disponibles").index(this);
        var Asi = $(".Postulacion_Mascota").eq(Pos);
        $(Asi).fadeIn();
    });
    
    $(".CerrarPost").click(function(){
        $(".Postulacion_Mascota").hide();
    })
    
});

