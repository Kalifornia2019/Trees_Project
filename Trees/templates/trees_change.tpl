<form action='$SELF_URL' method='GET'> <div class="box box-success no-padding">
    <input type='hidden' name='index' value='$index'>
    <input type='hidden' name='ID' value='%ID%'>


    <div class='box box-theme box-form'>
        <div class='box-header'><h4 class='box-title'>Редагувати дерево</h4></div>
  <div class="box-tools pull-right">
            <button type="button" class="btn btn-default btn-xs" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
        </div>
   
                    <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-4">Порода дерева:</label>
                            <div class="col-md-12">
                                %SORT%
                            </div>
                        </div>
                    </div>
					 <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-4">Вік дерева:</label>
                            <div class="col-md-12">
                                %AGE%
                            </div>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-4">Висота дерева:</label>
                            <div class="col-md-12">
                                %HEIGHT%
                            </div>
                        </div>
                    </div>
					  <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-4">Окружність стовбура дерева:</label>
                            <div class="col-md-12">
                               %CIRCLE%
                            </div>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-4">Статус</label>
                            <div class="col-md-12">
                                %STATUS%
                            </div>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-4">Коментар</label>
                            <div class="col-md-12">
                                <textarea class="form-control" id="COMMENTS" name="COMMENTS" rows="8"></textarea>
                            </div>
                        </div>
                    </div>
        <div class="box-footer">
            %BUTTON_EDIT%
        </div>
</form>

