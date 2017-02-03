$(document).ready(function() {

	// Close mobile side navigation on "X" click
	$('#navigation .close').click(function() {
		$('#navigation').collapse('hide');
	});

	// Show the lightbox when opening mobile side navigation
	$('#navigation').on('shown.bs.collapse', function() {
		$('#lightbox').fadeIn('fast');
	});

	// Hide the lightbox when closing mobile side navigation
	$('#navigation').on('hidden.bs.collapse', function() {
		$('#lightbox').fadeOut('fast');
	});

	// Show image preview when choosing image to upload
	$('#file').on('change', function() {
		$('#file-error').hide();
		var reader = new FileReader();

		reader.onload = function(e) {
			$('#img-preview-well').find('.text-muted').hide();
			$('#img-preview').attr('src', e.target.result);
			$('#close-img-preview').show();
			$('#selected-img-name').text($('#file').val().split(/(\\|\/)/g).pop());
		}

		reader.readAsDataURL(this.files[0]);
	});

	// Remove the image and clear the preview
	$('#close-img-preview').click(function() {
		$('#img-preview-well').find('.text-muted').show();
		$('#file').val('');
		$('#img-preview').attr('src', '');
		$('#close-img-preview').hide();
		$('#selected-img-name').text('');
	});

	// Display thumbnail overlay options on click
	$('#image-list .thumbnail').click(function() {
		$('.img-overlay').fadeOut();
		var path = $(this).data('path');
		var img = $(this).find('img');
		$(this).find('.img-overlay').width(img.width()).height(img.height());
		$('<div class="img-overlay text-center"><div class="overlay-buttons"><a href="'+path+'" class="btn btn-default popup-link"><i class="fa fa-search"></i></a><a class="btn btn-default"><i class="fa fa-eye"></i></a></div></div>').insertAfter(img);
	});

	$('.popup-link').magnificPopup({
		delegate: 'a',
		type: 'image'
	});

});