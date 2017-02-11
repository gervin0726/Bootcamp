function showTrack(tracks) {
  $('.title').text(tracks.tracks.items[0].name);
  var elementAuthor = '<a></a>'
  $('.author').text(''tracks.tracks.items[0].artists[0].name);
  $('.cover img').attr('src', tracks.tracks.items[0].album.images[0].url);
}

function handleError(error) {
  console.log(error);
}
