<form action='$SELF_URL' METHOD=POST>

    <input type='hidden' name='index' value=$index>
    <input type='hidden' name='ID' value='%ID%'>

    <div class='box box-form box-primary form-horizontal'>
        <div class='box-body'>

 <img src="../Trees/images/func.jpg" alt="ecology tree" width="200"
         height="80">

        </div>

        <div class='box-footer'>
            %O2%
            %CO2%
            %AGE%
        </div>

    </div>

    <div class="col-md-6 col-sm-4">
        <div id="map" style="width: 100%; height: 500px;"></div>
        <script>
        </script>
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcgmg0BOrLHp-C7lyKJEM176fR6g_lIUA&callback=initMap">
        </script>
    </div>
  
</form>
