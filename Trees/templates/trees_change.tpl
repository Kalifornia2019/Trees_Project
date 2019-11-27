<div class="%STYLE_BOX%"> < div class = "box-header with-border" >
        <h3 class="box-title">Редагування дерева</h3>
        <div class="box-tools pull-right">
            <button type="button" class="btn btn-default btn-xs" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
        </div>
    </div>
    <form role="form" method="get">
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
                            <label class="control-label col-md-4">Реєстраційний номер дерева:</label>
							<label class="control-label col-md-4">%ID%</label>
                            <div class="col-md-8">
                                <input type=text class='form-control ip-input' name='ID' value='%ID%'>
                            </div>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-4">Порода дерева:</label>
							<label class="control-label col-md-4">%SORT%</label>
                            <div class="col-md-8">
                                <input type=text class='form-control ip-input' name='ADD_TREE_SORT' value='%ADD_TREE_SORT%'>
                            </div>
                        </div>
                    </div>
					 <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-4">Вік дерева:</label>
							<label class="control-label col-md-4">%AGE%</label>
                            <div class="col-md-8">
                                <input type=text class='form-control ip-input' name='AGE' value='%AGE%'>
                            </div>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-4">Висота дерева:</label>
							<label class="control-label col-md-4">%HEIGHT%</label>
                            <div class="col-md-8">
                                <input type=text class='form-control ip-input' name='HEIGHT' value='%HEIGHT%'>
                            </div>
                        </div>
                    </div>
					  <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-4">Окружність стовбура дерева:</label>
							<label class="control-label col-md-4">%CIRCLE%</label>
                            <div class="col-md-8">
                                 <input type=text class='form-control ip-input' name='CIRCLE' value='%CIRCLE%'>
                            </div>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-4">Статус</label>
							<label class="control-label col-md-4">%STATUS%</label>
                            <div class="col-md-8">
                                <input type=text class='form-control ip-input' name='STATUS' value='%STATUS%'>
                            </div>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label class="control-label col-md-4">Коментар</label>
                            <div class="col-md-8">
                                <textarea class="form-control" id="COMMENTS" name="COMMENTS" rows="8"></textarea>
                            </div>
                        </div>
                    </div>
        <div class="box-footer">
            %BUTTON_CHANGE%
        </div>
    </form>
</div>
