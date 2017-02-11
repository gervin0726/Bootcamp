$('document').ready(function() {


  var select = $('select');

  for (var i = 1950; i<=2016; i++) {
    select.append('<option value="' + i + '">' + i + '</option>');
  }

  $('form').submit(function (e) {
    var name = $('#name');
    var year = $('#year');
    var existError = false;

    $('form *').removeClass('error');

    if (name.val()=="") {
      name.addClass('error');
      existError = true;
    }

    if ((2016 - year.val())<= 17) {
      year.addClass('error');
      existError = true;
    }

    if (existError)
      e.preventDefault();
  });

})
