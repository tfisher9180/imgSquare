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

	if (filesize > 12048576) { // 5mb
		return false;
	} else {
		return true;
	}
});

// jQuery Validation upload form
$('#upload-form').validate({
	onfocusout: false,
	onkeyup: false,
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
		caption: {
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
		caption: {
			maxlength: jQuery.validator.format("Please enter no more than {0} characters")
		}
	}
});