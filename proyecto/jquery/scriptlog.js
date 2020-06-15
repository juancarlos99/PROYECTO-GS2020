$(document).ready(function() {
	//variables
	$('#registro').submit(function(e) {
		e.preventDefault();
		$.ajax({
			type: 'POST',
			url: 'registro.php',
			data: $(this).serialize(),
			success: function(response)
			{
				var jsonData = JSON.parse(response);

				if (jsonData.success == "1")
				{
					location.href = "index.php";
				}
				else
				{
					$('#enuso').show();
					$('#enuso').fadeOut(5000);;
				}
			}
		});
	});
	$('#login').submit(function(e) {
		e.preventDefault();
		$.ajax({
			type: 'POST',
			url: 'login.php',
			data: $(this).serialize(),
			success: function(response)
			{
				var jsonData = JSON.parse(response);

				if (jsonData.success == "1")
				{
					location.href = "index.php";
				}
				else
				{
					$('#span2').show();
					$('#log').val("");
					$('#pass').val("");
					exit;
				}
			}
		});
	});
	
	$('#Registro').on('shown.bs.modal', function() {
		$('#user').focus();
	});
	$('#Loginmodal').on('shown.bs.modal', function() {
		$('#log').focus();
	});
	$("#tele").keyup(function(){
		var reg = /[0-9]{9}/;
		var tel = $("#tele").val();
		if (!reg.test(tel)) {
			$("#te").show();
		}else{
			$("#te").hide();
		}
	})
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