var map = new google.maps.Map( document.getElementById('map'), {
  zoom: 10,
  center: new google.maps.LatLng(40.416775,-3.70379),
  mapTypeId: google.maps.MapTypeId.ROADMAP
});

var locations = [
  ['Bondi Beach', 40.384684, -3.689476, 4]
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
