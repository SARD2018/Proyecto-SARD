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
    
    $(".Datos_DAnonima").hide();
    $(".Prueba-Anonima").click(function (){
        var Index = $(".Prueba-Anonima").index(this);
        var Cod = $(".Datos_DAnonima").eq(Index);
        Cod.show();
    });
    $(".cerrar_anonima").click(function (){
        $(".Datos_DAnonima").hide()
    });
    
    $(".Res_Anonima").click(function (){
        var Index = $(".Res_Anonima").index(this);
        var Cod = $(".Codigo_D").eq(Index);
        var Des = $(".Respuesta").eq(Index);
        var Codigo = Cod.val();
        var Descripcion = Des.val();
        alert(Codigo+Descripcion);
        var btn = "Anonima";
        
        $.ajax({
            url: "Servlet_Denuncia",
            data: {
              Boton : btn,
              Codigo_RA: Codigo,
              Descripcion_RA: Descripcion
            },
            success: function( result ) {
              $( "#weather-temp" ).html( "<strong>" + result + "</strong> degrees" );
            }
          });
    });
});