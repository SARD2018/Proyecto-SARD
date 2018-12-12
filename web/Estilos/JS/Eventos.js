$(document).ready(function (){
    $(".BarrMenu").ready(function(){
        $(".BarrMenu").load("Menu_Administrador.jsp .BarraMenuAdmin",function(dato){
            $(this).html(dato);
        }); 
        $(".BarrMenu").load("Menu_Administrador.jsp .BarraMenuAdmin",function(dato){
            $(this).jsp(dato);
            $(dato).hide();
        });
    });
    $(".Informacion-E").hide();
    $(".Mostrar-E").mouseenter(function (){
       var Pos= $(".Mostrar-E").index(this);
       var Asi= $(".Informacion-E").eq(Pos);
       $(Asi).fadeIn();
    });
    $(".Mostrar-E").mouseleave(function (){
       var Pos= $(".Mostrar-E").index(this);
       var Asi= $(".Informacion-E").eq(Pos);
       $(Asi).fadeOut();
    });
    
    // REGISTRO_EVENTO
    $(".Tipo2").hide();
    
    $(".Otro").click(function (){
        $(".Tipo2").slideToggle();
        $(".Tipo2").css("margin-top","20px");
    });
    $(".Vacunacion").click(function (){
        $(".Tipo2").hide();
    });
    $(".Adopcion").click(function (){
        $(".Tipo2").hide();
    });
});