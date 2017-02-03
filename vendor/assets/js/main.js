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

	// Set some jQuery Validation defaults to use Bootstrap classes
	// http://stackoverflow.com/questions/36128361/jquery-validation-has-error-class-setting
	$.validator.setDefaults({
	    highlight: function(element) {

	        $(element).closest('.form-group').addClass('has-error');

	    },
	    unhighlight: function(element) {

	        $(element).closest('.form-group').removeClass('has-error');

	    },
	    errorElement: 'span',
	    errorClass: 'help-block',
	    errorPlacement: function(error, element) {
	        if(element.parent('.input-group').length) {
	            error.insertAfter(element.parent());
	        } else {
	            error.insertAfter(element);
	        }
    	}
	});

	// jQuery Validation file size method
	$.validator.addMethod('filesize', function(value, element, param) {

		var filesize = element.files[0].size;

		if (filesize > 5048576) { // 5mb
			return false;
		} else {
			return true;
		}
	});

	// jQuery Validation upload form
	$('#upload-form').validate({
		rules: {
			imageFile: {
				required: true,
				extension: "jpg|jpeg|png|gif",
				filesize: true
			},
			title: {
				required: true,
				maxlength: 100
			},
			description: {
				maxlength: 255
			}
		},
		messages: {
			imageFile: {
				required: "Select an image to upload",
				extension: "That doesn't look like an image file!",
				filesize: "That file is too large"
			},
			title: {
				required: "Enter a title for your image",
				maxlength: jQuery.validator.format("Please enter no more than {0} characters")
			},
			description: {
				maxlength: jQuery.validator.format("Please enter no more than {0} characters")
			}
		}
	});

});