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
                <label class='col-md-3 control-label'>_{TREE_AGE}_</label>
                <div class='col-md-9'>
                    <input type='text' class='form-control' name='AGE' value='%AGE%'>
                </div>
            </div>

            <div class='form-group'>
                <label class='col-md-3 control-label'>_{TREE_HEIGHT}_</label>
                <div class='col-md-9'>
                    <input type='text' class='form-control' name='HEIGHT' value='%HEIGHT%'>
                </div>
            </div>

            <div class='form-group'>
                <label class='col-md-3 control-label'>_{TREE_CIRCUMFERENCE}_</label>
                <div class='col-md-9'>
                    <input type='text' class='form-control' name='CIRCLE' value='%CIRCLE%'>
                </div>
            </div>

            <div class='form-group'>
                <label class='col-md-3 control-label'>_{TREE_STATUS}_</label>
                <div class='col-md-9'>
                    <input type='text' class='form-control' name='STATUS' value='%STATUS%'>
                </div>
            </div>

            <div class='form-group'>
                <label class='col-md-3 control-label'>_{X}_</label>
                <div class='col-md-9'>
                    <input type='text' class='form-control' name='X' value='%X%'>
                </div>
            </div>

            <div class='form-group'>
                <label class='col-md-3 control-label'>_{Y}_</label>
                <div class='col-md-9'>
                    <input type='text' class='form-control' name='Y' value='%Y%'>
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