$(document).ready(function () {
    $(".BarrMenu").ready(function(){
        $(".BarrMenu").load("Menu_Administrador.jsp .BarraMenuAdmin",function(dato){
            $(this).html(dato);
        }); 
        $(".BarrMenu").load("Menu_Administrador.jsp .BarraMenuAdmin",function(dato){
            $(this).jsp(dato);
            $(dato).hide();
        });
    });
    $(".TablaDe1").hide();
    $(".DenAnon").click(function(){
            $(".TablaDe1").slideToggle();  
            $(".TablaDe2").slideUp();
    });
    $(".TablaDe2").hide();
    $(".DenCli").click(function(){
            $(".TablaDe2").slideToggle();  
            $(".TablaDe1").slideUp();
    });
});