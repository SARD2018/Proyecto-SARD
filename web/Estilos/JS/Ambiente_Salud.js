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
$(".Rol");
$(".Foto");

    $(".In_Am_Sa").click(function(){
        alert("entra_click");
        var Index = $(".In_Am_Sa").index(this);
        var Docu= $(".Documento_AS").eq(Index);
        var Tip= $(".Tipo_Documento_AS").eq(Index);
        var Nom= $(".Nombre_AS").eq(Index);
        var Ape= $(".Apellido_AS").eq(Index);
        var Gen= $(".Genero_AS").eq(Index);
        var Fec= $(".Fecha_Nacimiento_AS").eq(Index);
        var Dir= $(".Direccion_AS").eq(Index);
        var Tel= $(".Telefono_AS").eq(Index);
        var Corre= $(".Correo_AS").eq(Index);
        var Ro= $(".Rol_AS").eq(Index);
        var Fot= $(".Foto_AS").eq(Index);
        
       var Valor = "In_Am_Sa"; 
       var Documento= $(Docu).val();
       var Tipo= $(Tip).val();
       var Nombre= $(Nom).val();
       var Apellido= $(Ape).val();
       var Genero= $(Gen).val();
       var Fecha= $(Fec).val();
       var Direccion= $(Dir).val();
       var Telefono= $(Tel).val();
       var Correo= $(Corre).val();
       var Rol= $(Ro).val();
       var Foto= $(Fot).val();
        
       $.ajax({
        url: "Servlet_Ambiente_Salud",
        data: {
          Valor_AS: Valor,
          Documento_AS: Documento,
          Tipo_AS: Tipo,
          Nombre_AS: Nombre,
          Apellido_AS: Apellido, 
          Genero_AS: Genero, 
          Fecha_AS: Fecha,
          Direccion_AS: Direccion,
          Telefono_AS: Telefono,
          Correo_AS: Correo,
          Rol_AS: Rol,
          Foto_AS: Foto
        },
        success: function( result ) {
          $( "#weather-temp" ).html( result);
        }
      });
    });
    
    
    //ACTUALIZAR
    $(".Documento_AS");
    $(".Direccion_AS");
    $(".Telefono_AS");
    $(".Correo_AS");
    $(".Rol_AS");
    $(".Foto_AS");
    
    $(".Act_AS").click(function(){
        
        var Index = $(".Act_AS").index(this);
        var Docu= $(".Documento_AS").eq(Index);
        var Dir= $(".Direccion_AS").eq(Index);
        var Tel= $(".Telefono_AS").eq(Index);
        var Corre= $(".Correo_AS").eq(Index);
        var Ro= $(".Rol_AS").eq(Index);
        var Fot= $(".Foto_AS").eq(Index);
        
       var Valor = "Act_Am_Sa"; 
       var Documento= $(Docu).val(); 
       var Direccion= $(Dir).val();
       var Telefono= $(Tel).val();
       var Correo= $(Corre).val();
       var Rol= $(Ro).val();
       var Foto= $(Fot).val();
       
       $.ajax({
        url: "Servlet_Ambiente_Salud",
        data: {
          Valor_AS: Valor,
          Documento_AS: Documento,
          Direccion_AS: Direccion,
          Telefono_AS: Telefono,
          Correo_AS: Correo,
          Rol_AS: Rol,
          Foto_AS: Foto
        },
        success: function( result ) {
          $( "#weather-temp" ).html( result);
        }
      });
    });
    
    
    //ELIMINAR
    $(".Documento_AS");
    
    $(".Eli_AS").click(function(){
        var Index = $(".Eli_AS").index(this);
        var Docu = $(".Documento_AS").eq(Index);
        
        var Valor="Eli_Am_Sa";
        var Documento =$(Docu).val();
        
        $.ajax({
        url: "Servlet_Ambiente_Salud",
        data: {
          Valor_AS: Valor,
          Documento_AS: Documento
        },
        success: function( result ) {
          $( "#weather-temp" ).html( result);
        }
      });
    });
 });