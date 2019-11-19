<div class="box box-success"> < div class = "box-header with-border" >
        <h3 class="box-title">_{DATE_ADD}_</h3>
        <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
        </div>
    </div>
    <!-- /.box-header -->
    <form role="form" method="get">
    <div class="box-body no-padding">
        <div class="row">
            <div class="col-md-8 col-sm-8">
			    <div class="box-body">
                    <div class="form-group">
                        <label class="control-label col-md-4">Дата занесення дерева в реєстр:</label>
					    <label class="control-label col-md-4">%DATE%</label>
                        <div class="col-md-8">
                            <input type=text class='form-control ip-input' name='DATE' value='%DATE%'> 
                        </div>
                    </div>
                </div>
				<div class="box-body">
                    <div class="form-group">
                        <label class="control-label col-md-4">_{TREE_ADD}_</label>
						<label class="control-label col-md-4">%ID%</label>
                        <div class="col-md-8">
                            <input type=text class='form-control ip-input' name='ID' value='%ID%'>
                        </div>
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label class="control-label col-md-4">_{TREE_TYPE}_</label>
					    <label class="control-label col-md-4">%SORT%</label>
                        <div class="col-md-8">
                            <input type=text class='form-control ip-input' name='ADD_TREE_SORT' value='%ADD_TREE_SORT%'>
                        </div>
                    </div>
                </div>
			    <div class="box-body">
                    <div class="form-group">
                        <label class="control-label col-md-4">_{TREE_AGE}_</label>
						<label class="control-label col-md-4">%AGE%</label>
                        <div class="col-md-8">
                            <input type=text class='form-control ip-input' name='AGE' value='%AGE%'>
                        </div>
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label class="control-label col-md-4">_{TREE_HEIGHT}_</label>
					    <label class="control-label col-md-4">%HEIGHT%</label>
                        <div class="col-md-8">
                            <input type=text class='form-control ip-input' name='HEIGHT' value='%HEIGHT%'>
                        </div>
                    </div>
                </div>
				<div class="box-body">
                    <div class="form-group">
                        <label class="control-label col-md-4">_{TREE_CIRCUMFERENCE}_</label>
						<label class="control-label col-md-4">%CIRCLE%</label>
                        <div class="col-md-8">
                            <input type=text class='form-control ip-input' name='CIRCLE' value='%CIRCLE%'>
                        </div>
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label class="control-label col-md-4">_{TREE_STATUS}_</label>
						<label class="control-label col-md-4">%STATUS%</label>
                        <div class="col-md-8">
                            <input type=text class='form-control ip-input' name='STATUS' value='%STATUS%'>
                        </div>
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label class="control-label col-md-4">_{COMMENT}_</label>
                        <div class="col-md-8">
                            <textarea class="form-control" id="COMMENTS" name="COMMENTS" rows="8"></textarea>
                        </div>
                    </div>
                </div>
                <div class="box-footer">
                    %BUTTON_ADD%
                    %BUTTON_CHANGE%
                </div>
            </div>
    <div class="col-md-8 col-sm-8">
                <input hidden="" id="value_x" name="VALUE_X" value="">
                <input hidden="" id="value_y" name="VALUE_Y" value="">
    <div id="map" style="width: 100%; height: 500px"></div>
    <script>
      function initMap() {
	    var opt = {
			center: {lat: -34.397, lng: 150.644} //{lat: %VALUE_X%, lng: %VALUE_Y%},
			zoom: 18
		};
		
        var map = new google.maps.Map(document.getElementById('map'),opt);

		var contentString = '<div id="content">'+
			'<div id="siteNotice">'+
			'</div>'+
			'<h3 id="firstHeading" class="firstHeading">_{PARK_TRYLOVSKIY}_</h3>'+
			'<div id="bodyContent">'+
			'<p>_{TREE_NUMBER_REGISTRATION}_</p>'+
			'</p>'+
			'</div>'+
			'</div>';
		// Info Windows
		var infoWindow = new google.maps.InfoWindow({
			 content: contentString,
			 maxWidth: 400
		});
		
		if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };
			var marker = new google.maps.Marker({
			position: pos,
			icon: {
				path: google.maps.SymbolPath.CIRCLE,
				strokeColor: 'darkgreen',
				scale: 3
			},
			draggable: true,
			map: map
			});
            infoWindow.setPosition(pos);
            infoWindow.setContent('Location found.');
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
      }
    </script>
	</div>
	</div>
	</form>
</div>

  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcgmg0BOrLHp-C7lyKJEM176fR6g_lIUA&callback=initMap"
    async defer></script> 
