$(document).ready(function() {
	//variables
	$("#new").keyup(function(){
		var pass1 = $('#new').val();
		var pass2 = $('#rep').val();
		if(pass1 == pass2){
			$('#span1').hide();
			$('#XD').show();
		}
		if(pass1 != pass2){
			$('#span1').show();
			$('#XD').hide();
		}
	});
	$("#rep").keyup(function(){
		var pass1 = $('#new').val();
		var pass2 = $('#rep').val();
		if(pass1 == pass2){
			$('#span1').hide();
			$('#XD').show();
		}
		if(pass1 != pass2){
			$('#span1').show();
			$('#XD').hide();
		}
	});
});
function panel(){
	$.ajax({
		type: 'get',
		url: 'panel.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#panel").html(datahtml);
			panelmoduser();
		},
		error: function(){
			$("#panel").html("<div>Error al cargar</div>");
		}
	})
};
$('#buscar').submit(function(e) {
	e.preventDefault();
	$.ajax({
		type: 'POST',
		url: 'buscar.php',
		data: $(this).serialize(),
		success: function(datahtml){
			$("#ordenar").html(datahtml);
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}

	});
});
$('#busqueda').keyup(function(e) {
	$.ajax({
		type: 'POST',
		url: 'buscar.php',
		data: $(this).serialize(),
		success: function(datahtml){
			$("#ordenar").html(datahtml);
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}

	});
});
function preciomayor(){
	$.ajax({
		type: 'get',
		url: 'ordenarproductos/preciomayor.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#ordenar").html(datahtml);
			
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}
	})
};
function ultimos(){
	$.ajax({
		type: 'get',
		url: 'ordenarproductos/novedades.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#ordenar").html(datahtml);
			
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}
	})
};
function preciomenor(){
	$.ajax({
		type: 'get',
		url: 'ordenarproductos/preciomenor.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#ordenar").html(datahtml);
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}
	})
};
$('#pc').click(function() {
	$.ajax({
		type: 'get',
		url: 'ordenarproductos/ordenarordenadores.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#ordenar").html(datahtml);
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}
	})
});
$('#monitor').click(function() {
	$.ajax({
		type: 'get',
		url: 'ordenarproductos/ordenarmonitor.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#ordenar").html(datahtml);
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}
	})
});
$('#portatil').click(function() {
	$.ajax({
		type: 'get',
		url: 'ordenarproductos/ordenarportatil.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#ordenar").html(datahtml);
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}
	})
});
$('#raton').click(function() {
	$.ajax({
		type: 'get',
		url: 'ordenarproductos/ordenarraton.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#ordenar").html(datahtml);		
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}
	})
});
$('#alfombrilla').click(function() {
	$.ajax({
		type: 'get',
		url: 'ordenarproductos/ordenaralfombrilla.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#ordenar").html(datahtml);		
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}
	})
});
$('#teclado').click(function() {
	$.ajax({
		type: 'get',
		url: 'ordenarproductos/ordenarteclado.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#ordenar").html(datahtml);		
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}
	})
});
$('#auriculares').click(function() {
	$.ajax({
		type: 'get',
		url: 'ordenarproductos/ordenarauriculares.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#ordenar").html(datahtml);		
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}
	})
});
$('#consola').click(function() {
	$.ajax({
		type: 'get',
		url: 'ordenarproductos/ordenarconsola.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#ordenar").html(datahtml);		
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}
	})
});
$('#todo').click(function() {
	$.ajax({
		type: 'get',
		url: 'ordenarproductos/mostratodo.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#ordenar").html(datahtml);		
		},
		error: function(){
			$("#ordenar").html("<div>Error al cargar</div>");
		}
	})
});
$(function(){
	$('[data-toggle="tooltip"]').tooltip();
});
function panelmoduser(){
	$.ajax({
		type: 'get',
		url: 'panelmoduser.php',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#panelmod").html(datahtml);
		},
		error: function(){
			$("#panelmod").html("<div>Error al cargar</div>");
		}
	})
};
