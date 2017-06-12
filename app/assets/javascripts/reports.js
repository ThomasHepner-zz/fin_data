var init = function() {
	$('#date_from').datepicker();
	$('#date_to').datepicker();
};

init();
$(document).on('page:load', init);
$(document).on('turbolinks:load', init);