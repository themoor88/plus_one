function Map(mapElem) {
  this.mapElem = mapElem;
  this.markers = []; // Empty array to store event markers
}

Map.prototype.init = function(latitude, longitude) {
  var options = {
    center: {lat: latitude, lng: longitude}, // Latitude / Longitude are passed via the data-* attributes
    zoom: 18,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  this.canvas = new google.maps.Map(this.mapElem, options);
}

Map.prototype.addMarker = function(latitude, longitude) {  // Can pass this a unique image argument later on for individual events
  var options = {
    position: {lat: latitude, lng: longitude},
    map: this.canvas
  }
    var myMarker = new google.maps.Marker(options);
    this.markers.push(myMarker);
}

// Map.prototype.removeMarker = function(marker) {
//   marker.setMap(null); // This will remove the marker from the map

//   var index = this.markers.indexOf(marker);
//   this.markers.splice(index, 1); // Remove object at this particular index (from the array)
// }



function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        console.log("Geolocation is not supported by this browser.");
    }
}
function showPosition(position) {
    var userGeoLatitude = position.coords.latitude
    var userGeoLongitude = position.coords.longitude;
}


$(document).on('ready page:load', function() {

  ////////// USER LANDING PAGE MAP //////////
  if ($('.user-map-canvas').length) {
    var latitude = $('.user-map-canvas').data('latitude'); // Latitude / Longitude passed via the data-* attributes
    var longitude = $('.user-map-canvas').data('longitude');
    // var customImage =
    var events = document.getElementById('events')
    var eventGeo = events.getAttribute('data-eventGeoData')
    var event_json = JSON.parse(eventGeo)   // Returned as a string, must parse back to JSON


    var myMap = new Map($('.user-map-canvas')[0]); // [0] will select regular DOM object… Google Maps doesn't like jQuery objects
    myMap.init(latitude, longitude);
    myMap.addMarker(latitude, longitude);

    $.each(event_json, function(index, value) {
      myMap.addMarker(parseFloat(value.latitude), parseFloat(value.longitude));
    });
  }

  ////////// EVENT SHOW PAGE MAP //////////
  if ($('.event-map-canvas').length) {
    var latitude = $('.event-map-canvas').data('latitude'); // Latitude / Longitude passed via the data-* attributes
    var longitude = $('.event-map-canvas').data('longitude');
    // var customImage =

    var myMap = new Map($('.event-map-canvas')[0]); // [0] will select regular DOM object… Google Maps doesn't like jQuery objects
    myMap.init(latitude, longitude);
    myMap.addMarker(latitude, longitude);
  }
});