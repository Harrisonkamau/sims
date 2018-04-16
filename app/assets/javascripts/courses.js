$(document).ready(function() {
  ('#courseUnits').click(function () {
    var data = $('#myModal :input[type="checkbox"]:checked').map(function () {
      return $(this).parent().text().replace(/\s+/g, '');
    }).get();
    console.log(data);
    return data;
  });
})
