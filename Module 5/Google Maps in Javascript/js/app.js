var map = new google.maps.Map( document.getElementById('map'), {
  zoom: 10,
  center: new google.maps.LatLng(-33.92, 151.25),
  mapTypeId: google.maps.MapTypeId.ROADMAP
});

var locations = [
  ['Bondi Beach', -33.890542, 151.274856, 4],
  ['Coogee Beach', -33.923036, 151.259052, 5]
]

var infowindow = new google.maps.InfoWindow();

var marker, i;

function markerInfo (marker, i) {
  return function() {
    infowindow.setContent(locations[i][0] + 'foo');
    infowindow.open(map, marker);
  }
}

for (var i = 0; i < locations.length; i++) {
  marker = new google.maps.Marker({
    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
    map: map
  });

  google.maps.event.addListener(marker, 'click', markerInfo(marker,i));
}
