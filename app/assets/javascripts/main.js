$(document).on('ready turbolinks:load', function () {
  setTimeout(function () {
    $('.flashes').hide('blind', {}, 500)
  }, 4000);
  // Activate tabs
  $('.nav-tabs a').click(function (e) {
    e.preventDefault()
    $(this).tab('show')
  })

});
