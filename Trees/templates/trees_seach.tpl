  
<form action='$SELF_URL' METHOD=POST>

    <input type='hidden' name='index' value=$index>
    <input type='hidden' name='ID' value='%ID%'>

    <div class='box box-form box-primary form-horizontal'>
        <div class='box-body'>

            <div class='form-group'>
                <label class='col-md-3 control-label'>_{TREE_TYPE}_</label>
                <div class='col-md-9'>
                    <input type='text' class='form-control' name='ADD_TREE_SORT' value='%ADD_TREE_SORT%'>
                </div>
            </div>

            <div class='form-group'>
                <label class='col-md-3 control-label'>_{FROM_AGE}_</label>
                <div class='col-md-9'>
                    <input type='text' class='form-control' name='AGE' value='%AGE%'>
                </div>
            </div>

            <div class='form-group'>
                <label class='col-md-3 control-label'>_{TO_AGE}_</label>
                <div class='col-md-9'>
                    <input type='text' class='form-control' name='HEIGHT' value='%HEIGHT%'>
                </div>
            </div>

            
            <div class='form-group'>
                <label class='col-md-3 control-label'>_{TREE_STATUS}_</label>
                <div class='col-md-9'>
                    <input type='text' class='form-control' name='STATUS' value='%STATUS%'>
                </div>
            </div>

           

        </div>

        <div class='box-footer'>
            %SEARCH%
        </div>

    </div>

    <div id="map" style="width: 100%; height: 300px"></div>
   	<script>
            function initMap() {
              var locations = [
                  %LOCATIONS_ARR%
              ];
              var map = new google.maps.Map(document.getElementById('map'), {
                  zoom: 10,
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
</form>
