function edped(id){
	$.ajax({
		type: 'get',
		url: 'actualizarped.php?id='+id,
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#PED").html(datahtml);
		},
		error: function(){
			$("#PED").html("<div>Error al cargar</div>");
		}
	})
}; 
function delete_pedido(id){
	$.ajax({
		url:'borrarped.php?id='+id
	}).done(function(result_delete){
		if (result_delete == "Pedido eliminado") {
			location.reload();
		}else{
			console.log(delete_pedido);
		}
	})
} 