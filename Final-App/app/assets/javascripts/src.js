$(document).ready(function() {
	var form = $("#edit_form");
	form.validate({
		rules: {
			"album[title]": {
				required: true
			}
		},
		messages: {
			"album[title]": "Title cannot be empty"
		},
		errorPlacement: function(error, element){
			error.appendTo($(element).next())
		}
	});
});