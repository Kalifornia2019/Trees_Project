 <div id="map" style="width: 100%; height: 300px"></div>
   	<script>
            function initMap() {
              var locations = [
                  %LOCATIONS_ARR%
              ];
              var map = new google.maps.Map(document.getElementById('map'), {
                  zoom: 16,
                  center: new google.maps.LatLng(48.53, 25.04),
                  mapTypeId: google.maps.MapTypeId.ROADMAP
              });
              var infowindow = new google.maps.InfoWindow();
              var marker, i;
              for (i = 0; i < locations.length; i++) {
                  marker = new google.maps.Marker({
                  position: new google.maps.LatLng(locations[i][1], locations[i][2]),
				
                  map: map
              });
              google.maps.event.addListener(marker, 'click', (function (marker, i) {
                                return function () {
                                      infowindow.setContent(locations[i][0]);
                                      infowindow.open(map, marker);
                                }
                              })(marker, i));
                            }
                        }
          </script>
                <script async defer
                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcgmg0BOrLHp-C7lyKJEM176fR6g_lIUA&callback=initMap">
                </script>
