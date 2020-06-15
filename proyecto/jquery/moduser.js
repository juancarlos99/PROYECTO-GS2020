function eduser(id){
	$.ajax({
		type: 'get',
		url: 'actualizar.php?id='+id,
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#AAA").html(datahtml);
		},
		error: function(){
			$("#AAA").html("<div>Error al cargar</div>");
		}
	})
}; 
function delete_products(id){

	console.log("hola");
	$.ajax({
		url:'borrar.php?id='+id
	}).done(function(result_delete){
		if (result_delete == "Usuario eliminado") {
			location.reload();
		}else{
			console.log(delete_product);
		}
	})
}
function adduser(){
	$.ajax({
		type: 'get',
		url: 'adduser.html',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#AAA").html(datahtml);
		},
		error: function(){
			$("#AAA").html("<div>Error al cargar</div>");
		}
	})
}; 