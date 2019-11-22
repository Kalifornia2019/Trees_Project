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

            <div class='form-group'>
                <label class='col-md-3 control-label'>_{COMMENT}_</label>
                <div class='col-md-9'>
                    <textarea class="form-control" id="COMMENTS" name="COMMENTS" rows="8"></textarea>
                </div>
            </div>

        </div>

        <div class='box-footer'>
            %SUBMIT%
        </div>

    </div>

</form>
