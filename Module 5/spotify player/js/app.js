$(document).ready(function() {
  $('#form').submit(function (e) {
    e.preventDefault();
    $.ajax({
      type: 'GET',
      dataType: 'json',
      url: 'https://api.spotify.com/v1/search?type=track&query=' + $('#search').val(),
      success: showTrack,
      error: handleError
    });
  });
  $('.btn-play').click(function() {
    $(this).toggleClass('playing');
    $(this).toggleClass('disabled');
    if ($(this).hasClass('playing'))
      $('.js-player').trigger('play');
    else
      $('.js-player').trigger('pause');
  });
});

