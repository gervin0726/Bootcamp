function onLocation (position) {
  console.log('Your latitude is' + position.coords.latitude)
  console.log('Your longitude is' + position.coords.longitude)
  $('img').attr('src', 'https://maps.googleapis.com/maps/api/staticmap?center='
                        + position.coords.latitude + ',' + position.coords.longitude
                        + '&zoom=13&size=400x300&markers=color:red|' + + position.coords.latitude + ',' + position.coords.longitude)
  document.getElementById('map').innerHTML = 'Lat' +
  position.coords.latitude + ', lon:' + position.coords.longitude
}

function onError (error) {
  console.error(error);
}

var options = {
  allowHighAccuracy: true
}


navigator.geolocation.getCurrentPosition(onLocation, onError, options);
