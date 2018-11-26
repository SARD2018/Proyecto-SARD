$(document).ready(function(){
// INGRESAR
$(".Documento_C");
$(".Tipo_Documento_C");
$(".Nombre_CI");
$(".Apellido_C");
$(".Genero_C");
$(".Fecha_Nacimiento_C");
$(".Direccion_C");
$(".Telefono_C");
$(".Correo_C");
$(".Foto_C");

    $(".In_Ciudadano").click(function(){
        alert("entra al boton");
        var Index = $(".In_Ciudadano").index(this);
        var Docu= $(".Documento_C").eq(Index);
        var Tip= $(".Tipo_Documento_C").eq(Index);
        var Nom= $(".Nombre_CI").eq(Index);
        var Ape= $(".Apellido_C").eq(Index);
        var Gen= $(".Genero_C").eq(Index);
        var Fec= $(".Fecha_Nacimiento_C").eq(Index);
        var Dir= $(".Direccion_C").eq(Index);
        var Tel= $(".Telefono_C").eq(Index);
        var Corre= $(".Correo_C").eq(Index);
        var Fot= $(".Foto_C").eq(Index);
        
       var Valor = "In_Ciudadano"; 
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
        url: "Servlet_Cliente",
        data: {
          Valor_C: Valor,
          Documento_C: Documento,
          Tipo_C: Tipo,
          Nombre_CI: Nombre,
          Apellido_C: Apellido, 
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

