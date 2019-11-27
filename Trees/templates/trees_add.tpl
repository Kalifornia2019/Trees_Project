<form action='$SELF_URL' method='GET' class='form-horizontal'>
    <input type='hidden' name='index' value='$index'>
    <input type='hidden' name='ID' value='%ID%'>


    <div class='box box-theme box-form'>
        <div class='box-header'><h4 class='box-title'>_{ACTION}_</h4></div>
        <div class='box-body'>
 

            <div class="form-group">
                <label class="control-label col-md-4">Порода дерева:</label>
                <div class="col-md-8">
                    %SORT%
                </div>
            </div>


            <div class="form-group">
                <label class="control-label col-md-4">Вік дерева:</label>
                <div class="col-md-8">
                    %AGE%
                </div>
            </div>


            <div class="form-group">
                <label class="control-label col-md-4">Висота дерева:</label>
                <div class="col-md-8">
                    %HEIGHT%
                </div>
            </div>


            <div class="form-group">
                <label class="control-label col-md-4">Окружність стовбура дерева:</label>
                <div class="col-md-8">
                    %CIRCLE%
                </div>
            </div>


            <div class="form-group">
                <label class="control-label col-md-4">Статус</label>
                <div class="col-md-8">
                    %STATUS%
                </div>
            </div>


            <div class="form-group">
                <label class="control-label col-md-4">Коментар</label>
                <div class="col-md-8">
                    <textarea class="form-control" id="COMMENT" name="COMMENT" rows="8"></textarea>
                </div>
            </div>
            <div class="box-footer">
                %BUTTON_ADD%
                %BUTTON_CHANGE%
            </div>
</div>

                <div class="col-md-12">
                  <input hidden="" id="value_x" name="VALUE_X" value="">
                  <input hidden="" id="value_y" name="VALUE_Y" value="">
                <div id="map" style="width: 100%; height: 300px"></div>
  <script>
                    var map, infoWindow;
                    function initMap() {
                        map = new google.maps.Map(document.getElementById('map'), {
                            center: {lat: %VALUE_X%, lng: %VALUE_Y%},
                            zoom: 18
                        });

			var contentString = '<div id="content">'+
                            '<div id="siteNotice">'+
                            '</div>'+
                            '<h3 id="firstHeading" class="firstHeading">Парк Трильoвського</h3>'+
                            '<div id="bodyContent">'+
                            '<p>Місцезнаходження нового дерева!</p>'+
                            '</p>'+
                            '</div>'+
                            '</div>';
                        infoWindow = new google.maps.InfoWindow({
                            content: contentString,
                            maxWidth: 400
                        });


if (navigator.geolocation) {
                            navigator.geolocation.getCurrentPosition(function(position) {
                                var pos = {
                                    lat: position.coords.latitude,
                                    lng: position.coords.longitude
                                };
                                var marker = new google.maps.Marker({ position: pos,
                                    icon: {
                                        path: google.maps.SymbolPath.CIRCLE,
                                        strokeColor: 'darkgreen',
                                        scale: 5
                                    },
                                    draggable: true,
                                    map: map});
                                infoWindow.open(map);
                                map.setCenter(pos);
                                document.getElementById('value_x').setAttribute('value', pos.lat);
                                document.getElementById('value_y').setAttribute('value', pos.lng);
                            }, function() {
                                handleLocationError(true, infoWindow, map.getCenter());
                            });
                        } else {
                            // Browser doesn't support Geolocation
                            handleLocationError(false, infoWindow, map.getCenter());
                        }
                    }
                    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
                        infoWindow.setPosition(pos);
                        infoWindow.setContent(browserHasGeolocation ?
                            'Error: The Geolocation service failed.' :
                            'Error: Your browser doesn\'t support geolocation.');
                        infoWindow.open(map);
                    }

                </script>
                <script async defer
                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcgmg0BOrLHp-C7lyKJEM176fR6g_lIUA&callback=initMap">
                </script>
            </div>
 </form>


