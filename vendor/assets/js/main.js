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
	$('#image-list .thumbnail').click(function(e) {
		$('.img-overlay').fadeOut().remove();
		$('.overlay-buttons').fadeOut().remove();
		var path = $(this).data('path');
		var img = $(this).find('img');
		var view = $(this).data('view');
		$(this).find('.img-overlay').width(img.width()).height(img.height());
		$('<div class="overlay-buttons"><a href="'+path+'" class="btn btn-default popup-link"><i class="fa fa-search"></i></a><a href="'+view+'" class="btn btn-default view-link"><i class="fa fa-eye"></i></a></div><div class="img-overlay text-center"></div>').insertAfter(img);
	});

	// init magnificPopup on a DOM element and then delegate to a live element
	$('.thumbnail').magnificPopup({
		delegate: 'a.popup-link',
		type: 'image'
	});

	// init Masonry and set settings
	var $grid = $('.grid').masonry({
		itemSelector: '.grid-item',
		columnWidth: '.grid-sizer',
		percentPosition: true
	});

	// do masonry layout only after images loaded
	$grid.imagesLoaded().progress(function() {
		$grid.masonry();
	});

});