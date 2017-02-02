$(document).ready(function() {
	
	$('#navigation .close').click(function() {
		$('#navigation').collapse('hide');
	});

	$('#navigation').on('shown.bs.collapse', function() {
		$('#lightbox').fadeIn('fast');
	});

	$('#navigation').on('hidden.bs.collapse', function() {
		$('#lightbox').fadeOut('fast');
	});

});