/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

function geo_success(position) {
  let { latitude, longitude } = position.coords
  latitude = latitude.toFixed(6)
  longitude = longitude.toFixed(6)

  document.getElementById('tree_latitude').value = latitude
  document.getElementById('tree_longitude').value = longitude
  const url = `https://maps.google.com?q=${latitude},${longitude}&t=k&output=embed`
  document.getElementById('map-link').src = url
}

function geo_error() {
  alert("Sorry, no position available.");
}

var geo_options = {
  enableHighAccuracy: true,
  maximumAge        : 1000,
  timeout           : 1000
};

document.addEventListener("DOMContentLoaded", function(event) {
  if (window.location.href.match('/trees/new')) {
    const updateLocationButton = document.getElementById('update-coordinates')
    if ("geolocation" in navigator) {
      updateLocationButton.onclick = function() {
        navigator.geolocation.getCurrentPosition(geo_success, geo_error, geo_options)
      }
    } else {
      alert('Geo location is not available')
    }
  }
})
