var Login = function () {

	var handleLoginAlum = function() {

		$('.login-alum-form').validate({
	            errorElement: 'span', //default input error message container
	            errorClass: 'help-block', // default input error message class
	            focusInvalid: false, // do not focus the last invalid input
	            rules: {
	                codigo: {
	                    required: true
	                },
	                password: {
	                    required: true
	                },
	                remember: {
	                    required: false
	                }
	            },

	            messages: {
	                codigo: {
	                    required: "El Código es requerido."
	                },
	                password: {
	                    required: "El Password es requerido."
	                }
	            },

	            invalidHandler: function (event, validator) { //display error alert on form submit   
	                $('.alert-danger', $('.login-alum-form')).show();
	            },

	            highlight: function (element) { // hightlight error inputs
	                $(element)
	                    .closest('.form-group').addClass('has-error'); // set error class to the control group
	            },

	            success: function (label) {
	                label.closest('.form-group').removeClass('has-error');
	                label.remove();
	            },

	            errorPlacement: function (error, element) {
	                error.insertAfter(element.closest('.input-icon'));
	            },

	            submitHandler: function (form) {
	                form.submit(); // form validation success, call ajax form submit
	            }
	        });

	        $('.login-alum-form input').keypress(function (e) {
	            if (e.which == 13) {
	                if ($('.login-alum-form').validate().form()) {
	                    $('.login-alum-form').submit(); //form validation success, call ajax form submit
	                }
	                return false;
	            }
	        });
                
                $('#alum-forget-password').click(function (){
                    $('.login-alum-form').hide().addClass('ultimo');
                    $('.forget-form').show();
                });
                
                $('#login-usu-form').click(function (){
                    $('.login-alum-form').hide();
                    $('.login-usu-form').show();
                });
	}


        var handleLoginUsu = function() {

		$('.login-usu-form').validate({
	            errorElement: 'span', //default input error message container
	            errorClass: 'help-block', // default input error message class
	            focusInvalid: false, // do not focus the last invalid input
	            rules: {
	                usuario: {
	                    required: true
	                },
	                password: {
	                    required: true
	                },
	                remember: {
	                    required: false
	                }
	            },

	            messages: {
	                codigo: {
	                    required: "El U Usuario es requerido."
	                },
	                password: {
	                    required: "El Password es requerido."
	                }
	            },

	            invalidHandler: function (event, validator) { //display error alert on form submit   
	                $('.alert-danger', $('.login-usu-form')).show();
	            },

	            highlight: function (element) { // hightlight error inputs
	                $(element)
	                    .closest('.form-group').addClass('has-error'); // set error class to the control group
	            },

	            success: function (label) {
	                label.closest('.form-group').removeClass('has-error');
	                label.remove();
	            },

	            errorPlacement: function (error, element) {
	                error.insertAfter(element.closest('.input-icon'));
	            },

	            submitHandler: function (form) {
	                form.submit(); // form validation success, call ajax form submit
	            }
	        });

	        $('.login-usu-form input').keypress(function (e) {
	            if (e.which == 13) {
	                if ($('.login-usu-form').validate().form()) {
	                    $('.login-usu-form').submit(); //form validation success, call ajax form submit
	                }
	                return false;
	            }
	        });
                $('#usu-forget-password').click(function(){
                    $('.login-usu-form').hide().addClass('ultimo');
                    $('.forget-form').show();
                });
                $('#usu-back-btn').click(function(){
                    $('.login-usu-form').hide();
                    $('.login-alum-form').show();
                });
	}
        
	var handleForgetPassword = function () {
		$('.forget-form').validate({
	            errorElement: 'span', //default input error message container
	            errorClass: 'help-block', // default input error message class
	            focusInvalid: false, // do not focus the last invalid input
	            ignore: "",
	            rules: {
	                email: {
	                    required: true,
	                    email: true
	                }
	            },

	            messages: {
	                email: {
	                    required: "Email is required."
	                }
	            },

	            invalidHandler: function (event, validator) { //display error alert on form submit   

	            },

	            highlight: function (element) { // hightlight error inputs
	                $(element)
	                    .closest('.form-group').addClass('has-error'); // set error class to the control group
	            },

	            success: function (label) {
	                label.closest('.form-group').removeClass('has-error');
	                label.remove();
	            },

	            errorPlacement: function (error, element) {
	                error.insertAfter(element.closest('.input-icon'));
	            },

	            submitHandler: function (form) {
	                form.submit();
	            }
	        });

	        $('.forget-form input').keypress(function (e) {
	            if (e.which == 13) {
	                if ($('.forget-form').validate().form()) {
	                    $('.forget-form').submit();
	                }
	                return false;
	            }
	        });

	       
	        jQuery('#forget-back-btn').click(function () {
	            if($(".login-usu-form").hasClass('ultimo')){
                        $('.login-usu-form').show().removeClass('ultimo');
                    }
                    else if($(".login-alum-form").hasClass('ultimo')){
                         $('.login-alum-form').show().removeClass('ultimo');
                    }
	            jQuery('.forget-form').hide();
	        });

	}

//	var handleRegister = function () {
//
//		function format(state) {
//            if (!state.id) return state.text; // optgroup
//            return "<img class='flag' src='assets/img/flags/" + state.id.toLowerCase() + ".png'/>&nbsp;&nbsp;" + state.text;
//        }
//
//
//		$("#select2_sample4").select2({
//		  	placeholder: '<i class="fa fa-map-marker"></i>&nbsp;Select a Country',
//            allowClear: true,
//            formatResult: format,
//            formatSelection: format,
//            escapeMarkup: function (m) {
//                return m;
//            }
//        });
//
//
//			$('#select2_sample4').change(function () {
//                $('.register-form').validate().element($(this)); //revalidate the chosen dropdown value and show error or success message for the input
//            });
//
//
//
//         $('.register-form').validate({
//	            errorElement: 'span', //default input error message container
//	            errorClass: 'help-block', // default input error message class
//	            focusInvalid: false, // do not focus the last invalid input
//	            ignore: "",
//	            rules: {
//	                
//	                fullname: {
//	                    required: true
//	                },
//	                email: {
//	                    required: true,
//	                    email: true
//	                },
//	                address: {
//	                    required: true
//	                },
//	                city: {
//	                    required: true
//	                },
//	                country: {
//	                    required: true
//	                },
//
//	                username: {
//	                    required: true
//	                },
//	                password: {
//	                    required: true
//	                },
//	                rpassword: {
//	                    equalTo: "#register_password"
//	                },
//
//	                tnc: {
//	                    required: true
//	                }
//	            },
//
//	            messages: { // custom messages for radio buttons and checkboxes
//	                tnc: {
//	                    required: "Please accept TNC first."
//	                }
//	            },
//
//	            invalidHandler: function (event, validator) { //display error alert on form submit   
//
//	            },
//
//	            highlight: function (element) { // hightlight error inputs
//	                $(element)
//	                    .closest('.form-group').addClass('has-error'); // set error class to the control group
//	            },
//
//	            success: function (label) {
//	                label.closest('.form-group').removeClass('has-error');
//	                label.remove();
//	            },
//
//	            errorPlacement: function (error, element) {
//	                if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
//	                    error.insertAfter($('#register_tnc_error'));
//	                } else if (element.closest('.input-icon').size() === 1) {
//	                    error.insertAfter(element.closest('.input-icon'));
//	                } else {
//	                	error.insertAfter(element);
//	                }
//	            },
//
//	            submitHandler: function (form) {
//	                form.submit();
//	            }
//	        });
//
//			$('.register-form input').keypress(function (e) {
//	            if (e.which == 13) {
//	                if ($('.register-form').validate().form()) {
//	                    $('.register-form').submit();
//	                }
//	                return false;
//	            }
//	        });
//
//	        jQuery('#register-btn').click(function () {
//	            jQuery('.login-form').hide();
//	            jQuery('.register-form').show();
//	        });
//
//	        jQuery('#register-back-btn').click(function () {
//	            jQuery('.login-form').show();
//	            jQuery('.register-form').hide();
//	        });
//	}
    
    return {
        //main function to initiate the module
        init: function () {
        	
            handleLoginAlum();
            handleLoginUsu();
            handleForgetPassword();
//            handleRegister();        
	       
        }

    };

}();