var init = function() {
	$('#date_from').datepicker();
	$('#date_to').datepicker();

	$.validator.addMethod('dateFromBeforeDateTo', function () {
		var field_1 = $('input[name="date_from"]').val(),
				field_2 = $('input[name="date_to"]').val();

		if (field_1.length == 0 || field_2.length == 0) return false;

		var date_from = new Date(field_1),
				date_to = new Date(field_2);

		return date_from < date_to;
	}, 'The beginning date must be earlier than the ending date of the report');

	$('#reportForm').validate({
		rules: {
			date_to: {
				dateFromBeforeDateTo: true
			}
		}
	});
};

init();
$(document).on('page:load', init);
$(document).on('turbolinks:load', init);