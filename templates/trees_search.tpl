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
                    <input type='text' class='form-control' name='AGE2' value='%AGE2%'>
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

    <div class="col-md-6 col-sm-4">
        <div id="map" style="width: 100%; height: 500px;"></div>
        <script>
        </script>
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcgmg0BOrLHp-C7lyKJEM176fR6g_lIUA&callback=initMap">
        </script>
    </div>
  
</form>
