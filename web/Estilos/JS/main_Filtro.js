$(document).ready (function(){
    $(".Filtro").keyup(function (){
        var dato = $(".Filtro").val();
        $.ajax ({
          url: "Servlet_Administrador_2",
          data: {
            Dato: dato
          },
          success: function ( result ) {
            $( ".T_Administrador" ).html( result);
          }
        });
    });
});
