$(document).on('ready turbolinks:load', function () {
  setTimeout(function () {
    $('.flashes').hide('blind', {}, 500)
  }, 4000);
  // Activate tabs
  $('.nav-tabs a').click(function (e) {
    e.preventDefault()
    $(this).tab('show')
  });

  // customize datepicker
  $('.datepicker').datepicker({
    format: 'yyyy',
    title: 'Admission/Completion Year',
    viewMode: 'years',
    minViewMode: 'years',
    autoclose: true,
    clearBtn: true
  });

  $('.datepicker-striped').datepicker({
    format: 'mm/dd/yyyy',
    title: 'Attendance date',
    autoclose: true,
    todayHighlight: true,
    clearBtn: true
  });

});
