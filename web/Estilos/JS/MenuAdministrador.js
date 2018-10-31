$(document).ready(function(){
	//menu responsive 
	$(".Boton-m span").click(function(e){
		e.preventDefault();
		if ($(".Boton-m span").attr('class')=='icon-menu') {
			$(".Boton-m span").removeClass('icon-menu').addClass('icon-cancel');
			$(".Barra-menu nav").animate({left:'0'});
		} else {
			$(".Boton-m span").removeClass('icon-cancel').addClass('icon-menu');
			$(".Barra-menu nav").animate({left:'-100%'});
		}
	});
	//agregar y eliminar clase nav-responsive
	var wind= $(window).width();
	if (wind<=770) {
		$(".Barra-menu nav").addClass('nav-responsive');
	}else {
		$(".Barra-menu nav").removeClass('nav-responsive');
	}
	$(window).resize(function(){
		var wdi= $(window).width();

		if (wdi<=770) {
                    $(".Barra-menu nav").addClass('nav-responsive');
		}else{
                    $(".Barra-menu nav").removeClass('nav-responsive');
                    $(".Barra-menu nav").css({'position':''});
		}
	});
	// Menu fixed
	var navtop = $('.Barra-menu').offset().top;
	var navheight= $('.Barra-menu').height();
	console.log(navheight);
	$(window).scroll(function(){
            if ($(window).scrollTop()> navtop) {
                $('.Barra-menu').css({'position':'fixed','top':'0','max-height':'8.4%'})
                $('body').css({'padding-top':navheight})
                $('.nav-responsive').css({'position':'fixed'})
                $('.DatosPerfil').css({'position':'fixed','top':navheight});
            } else{
                $('.Barra-menu').css({'position':'','top':'','max-height':'8.4%'})
                $('body').css({'padding-top':'0'})
                $('.nav-responsive').css({'position':'absolute'})
                $('.DatosPerfil').css({'position':'absolute','top':''});
            }
	});
	//perfil
	$(".DatosPerfil").hide();
        $(".Perfil").click(function (){
            $(".DatosPerfil").animate({width:'toggle',opacity:'toggle'});
        });
    $(".boton").click(function(){
        var X="informacion";
	    $.ajax({
	        url: "Servlet",
	        data: {
	          Variable: X
	        },
	        success: function( result ) {
	          $( ".Extraer" ).html( result );
	        }
	    }); 
    });
});