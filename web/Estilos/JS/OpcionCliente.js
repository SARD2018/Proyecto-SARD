$(document).ready(function(){
    $(".Denuncia").click(function(){
        $(".CargarPag").load("Registro_Denuncia.jsp",function(dato){
            $(this).jsp(dato);
        });
    });
});