$(document).ready(function (){
    $(".BarrMenu").ready(function(){
        $(".BarrMenu").load("Menu_Administrador.jsp .BarraMenuAdmin",function(dato){
            $(this).html(dato);
        }); 
        $(".BarrMenu").load("Menu_Administrador.jsp .BarraMenuAdmin",function(dato){
            $(this).jsp(dato);
            $(dato).hide;
        });
    });
    $(".Informacion-E").hide();
    $(".Mostrar-E").mouseenter(function (){
       var Pos= $(".Mostrar-E").index(this);
       var Asi= $(".Informacion-E").eq(Pos);
       $(Asi).fadeIn();
    });
    $(".Informacion-E").hide();
    $(".Mostrar-E").mouseleave(function (){
       var Pos= $(".Mostrar-E").index(this);
       var Asi= $(".Informacion-E").eq(Pos);
       $(Asi).fadeOut();
    });
});