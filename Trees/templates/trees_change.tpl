<form action=$SELF_URL METHOD=post name=FORM_NAS ID='FORM_NAS' class='form-horizontal' role='form'>
   <input type='hidden' name='index' value='$index'>
   %ID%
   <div class='box box-theme box-form'>
   <div class='box-header'>
      <h4 class='box-title'>_{TREE_EDIT}_</h4>
   </div>
   <div class='box-body'>
      <div class="form-group">
         <label class="control-label col-md-4">_{TREE_TYPE}_</label>
         <div class="col-md-8">
            %SORT%
         </div>
      </div>
      <div class="form-group">
         <label class="control-label col-md-4">_{TREE_AGE}_</label>
         <div class="col-md-8">
            %AGE%
         </div>
      </div>
      <div class="form-group">
         <label class="control-label col-md-4">_{TREE_HEIGHT}_</label>
         <div class="col-md-8">
            %HEIGHT%
         </div>
      </div>
      <div class="form-group">
         <label class="control-label col-md-4">_{TREE_CIRCLE}_</label>
         <div class="col-md-8">
            %CIRCLE%
         </div>
      </div>
      <div class="form-group">
         <label class="control-label col-md-4">_{TREE_STATUS}_</label>
         <div class="col-md-8">
            %STATUS%
         </div>
      </div>
      <div class="form-group">
         <label class="control-label col-md-4">_{COMMENT}_</label>
         <div class="col-md-8">
            <textarea class="form-control" id="COMMENT" name="COMMENT" rows="8"></textarea>
         </div>
      </div>
      <div class="box-footer">
         %BUTTON_EDIT%
      </div>
   </div>
</form>
