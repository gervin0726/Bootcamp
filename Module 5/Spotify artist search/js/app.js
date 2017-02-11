$(document).ready(function() {
  $('#form').submit(function(e){
    e.preventDefault();
    $.ajax({
      type: 'GET',
      dataType: 'json',
      url: 'https://api.spotify.com/v1/search?type=artist&query=' + $('#search').val(),
      success: showArtists,
      error: handleError
    });
  });

  $('#list-artists').on('click','.show-albums', function() {
    $.ajax({
      type: 'GET',
      dataType: 'json',
      url: 'https://api.spotify.com/v1/artists/'+ $(this).attr('data-artist-id') +'/albums',
      success: showAlbums,
      error: handleError
    });
  });

  $('#list-albums').on('click','.show-tracks', function() {
    $.ajax({
      type: 'GET',
      dataType: 'json',
      url: 'https://api.spotify.com/v1/albums/'+ $(this).attr('data-album-id') +'/tracks',
      success: showTracks,
      error: handleError
    });
  });
});
