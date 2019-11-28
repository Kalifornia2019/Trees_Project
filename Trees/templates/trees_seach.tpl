<div class="box box-success no-padding"">
    <h3 class="box-title">Пошук дерева</h3>
    <div class="box-tools pull-right">
      <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
      </button>
    </div>
  </div>
  <div class="box-body no-padding">
    <div class="row">
      <div class="col-md-6 col-sm-8">
        <div class="box box-theme box-form">
          <form role="form" method="get">
            <div class="box-body">
              <div class="form-group">
                <label class="control-label col-md-3">Порода дерева</label>
                <div class="col-md-9">
                  %SORT%
                </div>
              </div>
            </div>
            <div class="box-body">
              <div class="form-group">
                <label class="control-label col-md-3">Вік дерева</label>
                <div class="col-md-3">
                  %YEAR_FIRST%
                </div>
                <label class="control-label col-md-3">До</label>
                <div class="col-md-3">
                  %YEAR_SECOND%
                </div>
              </div>
            </div>
            <div class="box-body">
              <div class="form-group">
                <label class="control-label col-md-3">Статус</label>
                <div class="col-md-9">
                  %STATUS%
                </div>
              </div>
            </div>
            <div class="box-footer">
              %BUTTON_SEARCH%
            </div>
          </form>
        </div>
      </div>
      <div class="col-md-6 col-sm-4">
        <div id="map" style="width: 100%; height: 500px;"></div>
          <script>
            // Initialize and add the map
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
        </div>
      </div>
    </div>
</div>

