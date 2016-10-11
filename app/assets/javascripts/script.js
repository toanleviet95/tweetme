$(document).ready(function(){
	$('#your_mind').keydown(function(){
		var length = $(this).val().length;
		var number = 140 - length;
		$('#character_number').text(number);
		if(number < 0){
			$("#btn_tweet").css('opacity','0.3').css('cursor','default');
			$('#character_number').css('color','red');
		}else{
			$("#btn_tweet").css('opacity','1').css('cursor','pointer');
			$('#character_number').css('color','black');
		}
	});

	$('#your_mind').select(function(){
		$(this).keyup(function(){
			var length = $(this).val().length;
			var number = 140 - length;
			$('#character_number').text(number);
			$("#btn_tweet").css('opacity','1').css('cursor','pointer');
			$('#character_number').css('color','black');
		});
	});	
});