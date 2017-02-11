$(document).ready(function() {
  $('#js-get-characters').on('click', function () {
    $.ajax({
      type: 'GET',
      url: 'http://ironhack-characters.herokuapp.com/characters',
      success: showCharacters,
      error: handleError
    });
  });

  $('form').submit(function(e) {
    e.preventDefault;
    var data = {};
    data.name = $('input[name=name]').val();
    data.occupation = $('input[name=occupation]').val();
    data.weapon = $('input[name=weapon]').val();
    data.debt = $('input[name=debt]').val();
  });
  $.ajax({
    type: "POST",
    url: 'http://ironhack-characters.herokuapp.com/characters',
    data: $('#form').serializeArray(),
    success: showCharacters,
    error: handleError
  });

});

function showCharacters (characters) {
  var list = $('#characters-list');
  characters.forEach(function (character) {
    addCharacter(character,list);
  });
}

function addCharacter(character, lista) {
  var list = lista ? lista: $('#characters-list');
  var element = '<li>' + character.name + '</li>';
  list.append(element);
}

function handleError (error) {
  console.log(error);
}
