$(document).ready(function() {
	// $(':input[type="submit"]').prop('disabled', true);
  $("#subimt").click(function(event) {
    // var valuesToSubmit = $(this).serialize
    event.preventDefault();
    var company = $('#company').val();
    console.log(company);
    // $.ajax({
    //     type: "POST",
    //     url: $(this).attr('action'), //sumbits it to the given url of the form
    //     data: valuesToSubmit,
    //     dataType: "JSON" // you want a difference between normal and ajax-calls, and json is standard
    // }).success(function(json){
    //     console.log("success", json);
    // });
    // return false; // prevents normal behaviour
  });
});
