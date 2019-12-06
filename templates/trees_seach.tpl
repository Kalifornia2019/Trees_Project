<form action='$SELF_URL' METHOD=POST>
   <input type='hidden' name='index' value=$index>
   <input type='hidden' name='ID' value='%ID%'>
   <div class='box box-form box-primary form-horizontal'>
      <div class='box-body'>
         <div class='form-group'>
            <label class='col-md-3 control-label'>_{TREE_TYPE}_</label>
            <div class='col-md-9'>
               %ADD_TREE_SORT%
            </div>
         </div>
         <div class='form-group'>
            <label class='col-md-3 control-label'>_{FROM_AGE}_</label>
            <div class='col-md-9'>
               %AGE%
            </div>
         </div>
         <div class='form-group'>
            <label class='col-md-3 control-label'>_{TO_AGE}_</label>
            <div class='col-md-9'>
               %HEIGHT%
            </div>
         </div>
         <div class='form-group'>
            <label class='col-md-3 control-label'>_{TREE_STATUS}_</label>
            <div class='col-md-9'>
               %STATUS%
            </div>
         </div>
      </div>
      <div class='box-footer'>
         %SEARCH%
      </div>
   </div>
</form>




