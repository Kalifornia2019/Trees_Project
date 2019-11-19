<div class="box box-success no-padding""> < div class = "box-header with-border" >
    <h3 class="box-title">Пошук дерева</h3>
    <div class="box-tools pull-right">
      <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
      </button>
    </div>
  </div>
  <div class="box-body no-padding">
    <div class="row">
      <div class="col-md-6 col-sm-8">
        <div class="box box-theme box-form">
          <form role="form" method="get">
            <div class="box-body">
              <div class="form-group">
                <label class="control-label col-md-3">Порода дерева</label>
                <div class="col-md-9">
                  %SORT%
                </div>
              </div>
            </div>
            <div class="box-body">
              <div class="form-group">
                <label class="control-label col-md-3">Вік дерева</label>
                <div class="col-md-3">
                  %YEAR_FIRST%
                </div>
                <label class="control-label col-md-3">До</label>
                <div class="col-md-3">
                  %YEAR_SECOND%
                </div>
              </div>
            </div>
            <div class="box-body">
              <div class="form-group">
                <label class="control-label col-md-3">Статус</label>
                <div class="col-md-9">
                  %STATUS%
                </div>
              </div>
            </div>
            <div class="box-footer">
              %BUTTON_SEARCH%
            </div>
          </form>
        </div>
      </div>
      <div class="col-md-6 col-sm-4">
        <div id="map" style="width: 100%; height: 500px;"></div>
          <script>
            
          </script>
          <script async defer
                  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcgmg0BOrLHp-C7lyKJEM176fR6g_lIUA&callback=initMap">
          </script>
        </div>
      </div>
    </div>
</div>