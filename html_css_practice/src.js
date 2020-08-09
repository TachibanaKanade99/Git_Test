// $("input[type=submit").click(function (event) { 
//     alert("Signup successfully");
// });

$(document).ready(function(){
    $("#form-signup").validate({
        rules: {
            fname: {
                required: true,
				minlength: 2,
            },
            lname: {
                required: true,
                minlength: 2
            },
            gender: {
                required: true
            },
            topic: {
				required: true,
				minlength: 2
            },
            pass: {
                required: true,
                minlength: 8
            },
            pass_confirm: {
                required: true,
                minlength: 8,
                equalTo: "#pass"
			}
		},
		messages: {
			fname: {
				required: "Please enter your first name!",
				minlength: "Please enter at least 2 characters!"
			},
			lname: {
				required: "Please enter your last name!",
				minlength: "Please enter at least 2 characters!"
			},
			gender: {
				required: "Choose your gender!"
			},
			topic: {
				required: "Choose your topic!",
				minlength: "Choose at least 2 topics!!"
			},
			pass: {
				required: "You have not entered your password",
				minlength: "The password length is at least 8 characters"
			},
			pass_confirm: {
				required: "Reenter your password!!!",
				minlength: "The password length is at least 8 characters",
				equalTo: "Not correct! Try again!"
			}
		},
		errorPlacement: function(error, element){
			error.appendTo($(element).next())
		}
    });
	
    let validated = $("#form-signup").valid();
	if (validated){
		$("#submitBtn").removeClass("disabled")
	}
	else {
		$("#submitBtn").addClass("disabled")
	}    
    $("#submitBtn").on("click", function(){
        alert("Signup Successfully!");
    });
});

