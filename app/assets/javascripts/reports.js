var init = function() {
	$('#date-from').datepicker();
	$('#date-to').datepicker();
};

init();
$(document).on('page:load', init);
$(document).on('turbolinks:load', init);