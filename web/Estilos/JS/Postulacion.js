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
    $(".BloqPantalla").hide();
    $(".Form-Postulacion").ready(function(){
        $(".Form-Postulacion").load("Formulario-Postulacion.jsp",function(dato){
            $(this).html(dato);
        });
    });
    
    $(".Cod");
    
    $(".Disponibles").click(function(){
        var Pos = $(".Disponibles").index(this);
        var Codi = $(".Cod").eq(Pos);
        
        $(".BloqPantalla").fadeIn();
        var Cod = $(Codi).val();
        alert(Cod);
        $.ajax({
            url: "Servlet_Postulacion",
            data: {
                codig:Cod                
        },
        
        success: function( result ) {
            $( "Formulario-Postulacion.jsp" ).html( "<strong>" + result + "</strong> degrees" );
        }

        });
    });
   
   
    $(".BloqPantalla").click(function(){
        $(".BloqPantalla").fadeOut();
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
    
});

