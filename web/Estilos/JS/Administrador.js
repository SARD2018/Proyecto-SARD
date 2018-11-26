$(document).ready(function(){
// INGRESAR
$(".Documento");
$(".Tipo_Documento");
$(".Nombre");
$(".Apellido");
$(".Genero");
$(".Fecha_Nacimiento");
$(".Direccion");
$(".Telefono");
$(".Correo");
$(".Foto");

    $(".In_Admin").click(function(){
        var Index = $(".In_Admin").index(this);
        var Docu= $(".Documento").eq(Index);
        var Tip= $(".Tipo_Documento").eq(Index);
        var Nom= $(".Nombre").eq(Index);
        var Ape= $(".Apellido").eq(Index);
        var Gen= $(".Genero").eq(Index);
        var Fec= $(".Fecha_Nacimiento").eq(Index);
        var Dir= $(".Direccion").eq(Index);
        var Tel= $(".Telefono").eq(Index);
        var Corre= $(".Correo").eq(Index);
        var Fot= $(".Foto").eq(Index);
        
       var Valor = "In_Admin"; 
       var Documento= $(Docu).val();
       var Tipo= $(Tip).val();
       var Nombre= $(Nom).val();
       var Apellido= $(Ape).val();
       var Genero= $(Gen).val();
       var Fecha= $(Fec).val();
       var Direccion= $(Dir).val();
       var Telefono= $(Tel).val();
       var Correo= $(Corre).val();
       var Foto= $(Fot).val();
       $.ajax({
        url: "Servlet_Administrador",
        data: {
          Valor_A: Valor,
          Documento_A: Documento,
          Tipo_A: Tipo,
          Nombre_A: Nombre,
          Apellido_A: Apellido, 
          Genero_A: Genero, 
          Fecha_A: Fecha,
          Direccion_A: Direccion,
          Telefono_A: Telefono,
          Correo_A: Correo,
          Foto_A: Foto
        },
        success: function( result ) {
          $( "#weather-temp" ).html( result);
        }
      });
    });
    
    
    //ACTUALIZAR
    $(".Documento_A");
    $(".Direccion_A");
    $(".Telefono_A");
    $(".Correo_A");
    $(".Foto_A");
    
    $(".Act_A").click(function(){
        
        var Index = $(".Act_A").index(this);
        var Docu= $(".Documento_A").eq(Index);
        var Dir= $(".Direccion_A").eq(Index);
        var Tel= $(".Telefono_A").eq(Index);
        var Corre= $(".Correo_A").eq(Index);
        var Fot= $(".Foto_A").eq(Index);
        
       var Valor = "Act_Admin"; 
       var Documento= $(Docu).val(); 
       var Direccion= $(Dir).val();
       var Telefono= $(Tel).val();
       var Correo= $(Corre).val();
       var Foto= $(Fot).val();
       
       $.ajax({
        url: "Servlet_Administrador",
        data: {
          Valor_A: Valor,
          Documento_A: Documento,
          Direccion_A: Direccion,
          Telefono_A: Telefono,
          Correo_A: Correo,
          Foto_A: Foto
        },
        success: function( result ) {
          $( "#weather-temp" ).html( result);
        }
      });
    });
    
    //ELIMINAR
    $(".Documento_A");
    
    $(".Eli_A").click(function(){
        var Index = $(".Eli_A").index(this);
        var Docu = $(".Documento_A").eq(Index);
        
        var Valor="Eli_Admin";
        var Documento =$(Docu).val();
        
        $.ajax({
        url: "Servlet_Administrador",
        data: {
          Valor_A: Valor,
          Documento_A: Documento
        },
        success: function( result ) {
          $( "#weather-temp" ).html( result);
        }
      });
    });
});

