function edproducts(id){
	$.ajax({
		type: 'get',
		url: 'actualizarprod.php?id='+id,
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#PPP").html(datahtml);
		},
		error: function(){
			$("#PPP").html("<div>Error al cargar</div>");
		}
	})
};
function delete_products(id){
	$.ajax({
		url:'borrarprod.php?id='+id
	}).done(function(result_delete){
		if (result_delete == "Producto eliminado") {
			location.reload();
		}else{
			console.log(delete_user);
		}
	})
};
function addprod(){
	$.ajax({
		type: 'get',
		url: 'addpro.html',
		data: "",
		datatype: "html",
		success: function(datahtml){
			$("#PPP").html(datahtml);
		},
		error: function(){
			$("#PPP").html("<div>Error al cargar</div>");
		}
	})
};