function showArtists (artists) {
  var list = $('#list-artists');
  var element = "";
  list.empty();
  $.each(artists.artists.items, function(index, value) {
    element = '<li>' + value.name + ' <img src="'+ value.images[0].url +'" width="50" />'
              + '<button class="show-albums" data-artist-id="'+ value.id +'" type="button" data-toggle="modal"'
              + 'data-target="#my-modal-albums">Ver Albumns</button></li>';
    list.append(element);
  });
}


function showAlbums (albums) {
  var list = $('#list-albums');
  var element = "";
  list.empty();
  $.each(albums.items, function(index, value) {
      element = '<li>' + value.name + ' <img src="'+ value.images[0].url +'" width="50" />'
                + '<button class="show-tracks" data-album-id="'+ value.id +'" type="button" data-toggle="modal"'
                + 'data-target="#my-modal-tracks">Ver Tracks</button></li>';
      list.append(element);
  });
}

function showTracks (tracks) {
  var list = $('#list-tracks');
  var element = "";
  list.empty();
  $.each(tracks.items, function(index, value) {
      element = '<li><a href="'+ value.preview_url +'" target="_blank"><li>' + value.name + '</a></li>';
      list.append(element);
  });
}

function handleError (error) {
  console.log(error);
}
