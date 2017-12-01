function autocomplete(id) {
  document.addEventListener("DOMContentLoaded", function() {
    var userCity = document.getElementById(id);

    if (userCity) {
      var autocomplete = new google.maps.places.Autocomplete(userCity, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(userCity, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
