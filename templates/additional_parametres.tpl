<form action='$SELF_URL' METHOD=POST>
   <input type='hidden' name='index' value=$index>
   <input type='hidden' name='ID' value='%ID%'>
   <div class='box box-form box-primary form-horizontal'>
      <div class='box-body'>
         _{O2}_ %O2%
      </div>
      <div class='box-body'>
         _{CO2}_ %CO2%
      </div>
      <div class='box-body'>
         _{MID_AGE}_ %AGE%
      </div>
   </div>
   <div class='box-footer'>
      <img src="../img/func1.jpg">
   </div>
   </div>
   <div class="col-md-6 col-sm-4">
      <div id="map" style="width: 100%; height: 500px;"></div>
      <script></script>
      <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcgmg0BOrLHp-C7lyKJEM176fR6g_lIUA&callback=initMap"></script>
   </div>
</form>
