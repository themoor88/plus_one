var mapStyle = [{"featureType":"all","elementType":"all","stylers":[{ hue: "#fff" },{ gamma: 1.51 },{ saturation: 60 },]}];


function Map(mapElem) {
  this.mapElem = mapElem;
  this.markers = []; // Empty array to store event markers
}

Map.prototype.init = function(latitude, longitude) {
  var options = {
    center: {lat: latitude, lng: longitude}, // Latitude / Longitude are passed via the data-* attributes
    zoom: 13,
    styles: mapStyle,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  console.log(options)

  this.canvas = new google.maps.Map(this.mapElem, options);
};

Map.prototype.addMarker = function(latitude, longitude, title) {  // Can pass this a unique image argument later on for individual events
  var options = {
    position: {lat: latitude, lng: longitude},
    icon: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
    map: this.canvas,
    title: title
  };
    var myMarker = new google.maps.Marker(options);
    this.markers.push(myMarker);
};

Map.prototype.removeMarker = function(marker) {
  marker.setMap(null); // This will remove the marker from the map

  var index = this.markers.indexOf(marker);
  this.markers.splice(index, 1); // Remove object at this particular index (from the array)
}




$(document).on('ready page:load', function() {
  var myMap = new Map($('.user-map-canvas')[0]);

  function error(msg, geo) {
    alert('Please allow geolocation services to find events near you.')
  }

  function success(geo, map) {
    console.log("Success", "geo:", geo, "args", arguments);
    myLatitude = geo.coords.latitude // Bad practice to define global variables here, however I had no choice as navigator.geolocation.getCurrentPosition(success, error)
    myLongitude = geo.coords.longitude
    myMap.addMarker(myLatitude, myLongitude, "Me");
    myMap.canvas.panTo(myMap.markers[0].getPosition());
  }

  ////////// USER LANDING PAGE MAP //////////
  if ($('.user-map-canvas').length) {
    var latitude = $('.user-map-canvas').data('latitude'); // Latitude / Longitude passed via the data-* attributes
    var longitude = $('.user-map-canvas').data('longitude');

    // var myMap = new Map($('.user-map-canvas')[0]); // [0] will select regular DOM object… Google Maps doesn't like jQuery objects
    myMap.init(latitude, longitude);
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(success, error);
    } else {
      error('not supported');
    }

    $("#get_location").click(function(){  // On click,
      $.getJSON('/events.json', {latitude: latitude, longitude: longitude}, function(data) {
       $.each(data, function(index, value) {
          myMap.addMarker(parseFloat(value.latitude), parseFloat(value.longitude), value.event_name);
          // add your listener for the marker here
        });
      });
    })

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