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



        $(".Documento");
        $(".Tipo_Documeto");
        $(".Nombre");
        $(".Apellido");
        $(".Genero");
        $(".Fecha");
        $(".Direccion");
        $(".Telefono");
        $(".Correo");
        $(".Foto");
        
    $(".Actualizar").click(function(){
            alert("entra ajax");
        var btn = $(".Actualizar").index(this);
        var Do=$(".Documento").eq(btn);
        var Ti=$(".Tipo_Documento").eq(btn);
        var No=$(".Nombre").eq(btn);
        var Ap=$(".Apellido").eq(btn);
        var Ge=$(".Genero").eq(btn);
        var Fe=$(".Fecha").eq(btn);
        var Di=$(".Direccion").eq(btn);      
        var Te=$(".Telefono").eq(btn);      
        var Co=$(".Correo").eq(btn);      
        var Fo=$(".Foto").eq(btn);      
        
        var Docu=$(Do).val();
        var Tip=$(Ti).val();
        var Nom=$(No).val();
        var Ape=$(Ap).val();
        var Gene=$(Ge).val();
        var Fec=$(Fe).val();
        var Dir=$(Di).val();
        var Tel=$(Te).val();
        var Corre=$(Co).val();
        var Fot=$(Fo).val();
        
        $.ajax({
        url: "Servlet_Administrador",
        data: {
          Documento:Docu,
          Tipo:Tip,
          Nombre:Nom,
          Apellido:Ape,
          Genero:Gene,
          Fecha:Fec,
          Direccion:Dir,
          Telefono:Tel,
          Correo:Corre,
          Foto:Fot
          
        },
        success: function( result ) {
          $( "#weather-temp" ).html(result);
        }
        });
    });
    
    

