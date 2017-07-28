// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require materialize-sprockets
//= require turbolinks
//= require_tree .

function submit_f(){
	var token = arguments[2];
	$.ajax({
					type: "POST",
					url: "/register"+"?&authenticity_token=" + token,
					beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
					data: {"roll": arguments[0], "company":arguments[1]},
					success: function(result){
						if(result.status==='OK'){
							console.log("ALL OK")
						}
						else{
							console.log("FAIL")
							console.log(result.reason)
						}
					},
				});

}
