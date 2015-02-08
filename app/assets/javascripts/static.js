function show_order_form(){
	$('#order_result').html("");
	inst.open();
}

function send_order(){
	$('#order_result').html("Пожалуйста подождите.");
	$.post('order/new', 
		{ 
			name: $("#order_name").val(),
			phone: $("#order_phone").val(),
			text: $("#order_text").val() 
		},
		function(data) {
			$('#order_result').html("Ваша заявка успешно отправлена.");
		}
	);
}

