$(document).ready(function(){
    var Boton="nada";
    $(".In_Admin").click(function(){
        var Boton = "In_Admin";
        alert(Boton);
    });
    $(".btn_AmbienteySalud").click(function(){
        var Boton = "In_Ambiente_Salud";
        alert(Boton);
    });
    $(".btn_Ciudadano").click(function(){
        var Boton = "In_Ciudadano";
        alert(Boton);
    });
    
    $.ajax({
      url: "Servlet_Administrador",
      data: {
        Boton:Boton
      },
      success: function( result ) {
        $( "" ).html();
      }
    });
});