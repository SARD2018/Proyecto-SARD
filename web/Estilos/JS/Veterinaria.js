$(document).ready(function(){
// INGRESAR
$(".Nit_V");
$(".Nombre_Ve");
$(".Representante_V");
$(".Tipo_Veterinaria_V");
$(".Fecha_Fundacion_V");
$(".Direccion");
$(".Barrio");
$(".Telefono");
$(".Correo");
$(".Foto");


    $(".In_Veterinaria").click(function(){
        var Index = $(".In_Veterinaria").index(this);
        var Ni= $(".Nit_V").eq(Index);
        var Nom= $(".Nombre_V").eq(Index);
        var Rep= $(".Representante_V").eq(Index);
        var Tip= $(".Tipo_Veterinaria_V").eq(Index);
        var Fec= $(".Fecha_Fundacion_V").eq(Index);
        var Dir= $(".Direccion_V").eq(Index);
        var Bar= $(".Barrio_V").eq(Index);
        var Tel= $(".Telefono_V").eq(Index);
        var Corre= $(".Correo_V").eq(Index);
        var Fot= $(".Foto_V").eq(Index);
        
       var Valor = "In_Veterinaria"; 
       var Nit= $(Ni).val();
       var Nombre= $(Nom).val();
       var Representante= $(Rep).val();
       var Tipo= $(Tip).val();
       var Fecha= $(Fec).val();
       var Direccion= $(Dir).val();
       var Barrio= $(Bar).val();
       var Telefono= $(Tel).val();
       var Correo= $(Corre).val();
       var Foto= $(Fot).val();
       
       $.ajax({
        url: "Servlet_Veterinaria",
        data: {
          Valor_V: Valor,
          Nit_V: Nit,
          Nombre_V: Nombre,
          Representante_V: Representante,
          Apellido_V: Apellido, 
          Genero_C: Genero, 
          Fecha_C: Fecha,
          Direccion_C: Direccion,
          Telefono_C: Telefono,
          Correo_C: Correo,
          Foto_C: Foto
        },
        success: function( result ) {
          $( "#weather-temp" ).html( result);
        }
      });
    });
    
    //ACTUALIZAR
    $(".Documento_C");
    $(".Direccion_C");
    $(".Telefono_C");
    $(".Correo_C");
    $(".Foto_C");
    
    $(".Act_C").click(function(){
        
        var Index = $(".Act_C").index(this);
        var Docu= $(".Documento_C").eq(Index);
        var Dir= $(".Direccion_C").eq(Index);
        var Tel= $(".Telefono_C").eq(Index);
        var Corre= $(".Correo_C").eq(Index);
        var Fot= $(".Foto_C").eq(Index);
        
       var Valor = "Act_Ciudadano"; 
       var Documento= $(Docu).val(); 
       var Direccion= $(Dir).val();
       var Telefono= $(Tel).val();
       var Correo= $(Corre).val();
       var Foto= $(Fot).val();
       
       $.ajax({
        url: "Servlet_Cliente",
        data: {
          Valor_C: Valor,
          Documento_C: Documento,
          Direccion_C: Direccion,
          Telefono_C: Telefono,
          Correo_C: Correo,
          Foto_C: Foto
        },
        success: function( result ) {
          $( "#weather-temp" ).html( result);
        }
      });
    });
    
    //ELIMINAR
    $(".Documento_C");
    
    $(".Eli_C").click(function(){
        var Index = $(".Eli_C").index(this);
        var Docu = $(".Documento_C").eq(Index);
        
        var Valor="Eli_Ciudadano";
        var Documento =$(Docu).val();
        
        $.ajax({
        url: "Servlet_Cliente",
        data: {
          Valor_C: Valor,
          Documento_C: Documento
        },
        success: function( result ) {
          $( "#weather-temp" ).html( result);
        }
      });
    });
 });

