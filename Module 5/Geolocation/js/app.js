function onLocation (position) {
  console.log('Your latitude is' + position.coords.latitude)
  console.log('Your longitude is' + position.coords.longitude)
  document.getElementById('position').innerHTML = 'Lat' +
  position.coords.latitude + ', lon:' + position.coords.longitude
}

function onError (error) {
  console.error(error);
}

var options = {
  allowHighAccuracy: true
}


if ("geolocation" in navigator)
  console.log("geolocation is available!");
else {
  console.log("geolocation is not available");
}


navigator.geolocation.getCurrentPosition(onLocation, onError, options);
