@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Quản lý thông tin chung</a></div>
  </div>
<!--End-breadcrumbs-->
    <div class="page-wrapper">
        <div class="container-fluid">
            <div class="col-12">
              @if($errors->any())
              <div class="alert alert-error alert-block" style="margin-top:10px"> <a class="close" data-dismiss="alert" href="#">×</a>
              <h4 class="alert-heading">Lỗi!</h4>
              {{$errors->first()}}</div>
              @endif
              @if(session('success'))
              <div class="alert alert-success alert-block"  style="margin-top:10px"> <a class="close" data-dismiss="alert" href="#">×</a>
              <h4 class="alert-heading">Thành công!</h4>
              {{session('success')}}</div>
              @endif
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">
                            <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                                Thêm Quý mới
                            </button> -->
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="container-fluid">
                            <hr>
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                        <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                            <h5>Quản lý Banner màn hình TOP</h5>
                                        </div>
                                        <div class="widget-content"> 
                                            <div class="row-fluid">
                                                @if(!$banner)
                                                <p>
                                                    <button class="btn btn-primary btn-mini" data-toggle="modal" data-target="#myModal">Tạo Banner</button>
                                                </p>
                                                <div class="widget-content notify-ui">
                                                    <ul id="gritter-notify">
                                                        <li class="normal" class="bg_ly" style="">Thêm banner màn hình TOP</li>
                                                    </ul>
                                                </div>
                                                @else
                                                <p>
                                                    <button class="btn btn-primary btn-mini" data-toggle="modal" data-target="#editBanner">Chỉnh sửa Banner</button>
                                                </p>
                                                <image src="{{asset('images/banner/')}}/{{$banner['banner']}}" class="image-main"/>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                        <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                            <h5>Quản lý thông tin giấy chứng nhận</h5>
                                        </div>
                                        <div class="widget-content"> 
                                            <div class="row-fluid">
                                                @if(!$certificateTime)
                                                <p>
                                                    <button class="btn btn-primary btn-mini" data-toggle="modal" data-target="#modalTime">Thêm</button>
                                                </p>
                                                <div class="widget-content notify-ui">
                                                    <ul id="gritter-notify">
                                                        <li class="normal" class="bg_ly" style="">Thêm thông tin trong giấy chứng nhận</li>
                                                    </ul>
                                                </div>
                                                @else
                                                <p>
                                                    <button class="btn btn-primary btn-mini" data-toggle="modal" data-target="#modalEditTime">Chỉnh sửa thông tin</button>
                                                </p>
                                                <p>Câu chứng nhận: <code>{{$certificateTime['certificate_time']['text']}}</code></p>
                                                <p>Hiệu lực từ ngày <code>{{$certificateTime['certificate_time']['from_time']}}</code> đến ngày <code>{{$certificateTime['certificate_time']['to_time']}}</code></p>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                        <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                            <h5>Quản lý thông tin bài kiểm tra</h5>
                                        </div>
                                        <div class="widget-content"> 
                                            <div class="row-fluid">
                                                @if(!$timeTest)
                                                <p>
                                                    <button class="btn btn-primary btn-mini" data-toggle="modal" data-target="#modalTimeTest">Thêm</button>
                                                </p>
                                                <div class="widget-content notify-ui">
                                                    <ul id="gritter-notify">
                                                        <li class="normal" class="bg_ly" style="">Thêm thông tin thời hạn nộp bài</li>
                                                    </ul>
                                                </div>
                                                @else
                                                <p>
                                                    <button class="btn btn-primary btn-mini" data-toggle="modal" data-target="#modaltimeTestEdit">Chỉnh sửa thông tin</button>
                                                </p>
                                                <p>Thời hạn nộp bài: <code>{{$timeTest->config}}</code></p>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>    
    <div>
</div>
<div id="modalTimeTest" class="modal hide" style="width: 768px !important">
    <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Tạo thời hạn nộp bài</h3>
    </div>
    <div class="modal-body">
    <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Nhập Thông Tin</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="{{route('create-config')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
          @csrf
            <input type="hidden" id="banner" name="config" value="time_test"/>
            <div class="control-group">
              <label class="control-label">Thời hạn nộp bài:</label>
              <div class="controls">
                    <input id="" required type="text" name="time_val" class="" placeholder="Format: 18h00 - 31/10/2021" style="width: 66%;"/>
              </div>
            </div>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">Lưu lại</button>
            </div>
          </form>
        </div>
      </div>
    </div>
</div>
<div id="modaltimeTestEdit" class="modal hide" style="width: 768px !important">
    <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Chỉnh sửa thời hạn nộp bài</h3>
    </div>
    <div class="modal-body">
    <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Nhập Thông Tin</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="{{route('update-config')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
          @csrf
            <input type="hidden" id="banner" name="config_edit" value="time_test"/>
            <div class="control-group">
              <label class="control-label">Thời hạn nộp bài:</label>
              <div class="controls">
                    <input id="" required type="text" name="time_val_edit" value="@if($timeTest) {{$timeTest->config}} @endif" class="" placeholder="Format: 18h00 - 31/10/2021" style="width: 66%;"/>
              </div>
            </div>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">Lưu lại</button>
            </div>
          </form>
        </div>
      </div>
    </div>
</div>
<div id="modalTime" class="modal hide" style="width: 768px !important">
    <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Tạo thời gian hiêu lực chứng chỉ</h3>
    </div>
    <div class="modal-body">
    <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Chọn Thông Tin</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="{{route('create-config')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
          @csrf
            <input type="hidden" id="banner" name="config" value="certificate_time"/>
            <div class="control-group">
              <label class="control-label">Câu chứng nhận:</label>
              <div class="controls">
                    <input id="" required type="text" name="text_certificate" class="" placeholder=""/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Nhập thời gian Từ:</label>
              <div class="controls">
                    <input id="" required type="text" name="from_time" class="" placeholder="ngày/tháng/năm"/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Nhập thời gian Đến:</label>
              <div class="controls">
                    <input id="" required type="text" name="to_time" class="" placeholder="ngày/tháng/năm"/>
              </div>
            </div>
            <div class="control-group">
                <div id="imagePreview"></div>
            </div>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">Lưu lại</button>
            </div>
          </form>
        </div>
      </div>
    </div>
</div>
<div id="modalEditTime" class="modal hide" style="width: 768px !important">
    <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Tạo thời gian hiêu lực chứng chỉ</h3>
    </div>
    <div class="modal-body">
    <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Chọn Thông Tin</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="{{route('update-config')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
          @csrf
            <input type="hidden" id="banner" name="config_edit" value="certificate_time"/>
            <div class="control-group">
              <label class="control-label">Câu chứng nhận:</label>
              <div class="controls">
                    <input id="" required type="text" name="text_certificate_edit" value="@if($certificateTime) {{$certificateTime['certificate_time']['text']}}@endif" class="" placeholder=""/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Nhập thời gian Từ:</label>
              <div class="controls">
                    <input id="" required type="text" name="from_time_edit" value="@if($certificateTime) {{$certificateTime['certificate_time']['from_time']}}@endif" class="" placeholder="ngày/tháng/năm"/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Nhập thời gian Đến:</label>
              <div class="controls">
                    <input id="" required type="text" name="to_time_edit" class="" value="@if($certificateTime) {{$certificateTime['certificate_time']['to_time']}}@endif" placeholder="ngày/tháng/năm"/>
              </div>
            </div>
            <div class="control-group">
                <div id="imagePreview"></div>
            </div>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">Lưu lại</button>
            </div>
          </form>
        </div>
      </div>
    </div>
</div>
<div id="myModal" class="modal hide" style="width: 768px !important">
    <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Tạo Banner</h3>
    </div>
    <div class="modal-body">
    <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Chọn Thông Tin</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="{{route('create-config')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
          @csrf
            <input type="hidden" id="banner" name="config" value="banner"/>
            <div class="control-group">
              <label class="control-label">Upload Banner</label>
              <div class="controls">
                    <input id="uploadFile" required type="file" name="banner" class="img" />
              </div>
            </div>
            <div class="control-group">
                <div id="imagePreview"></div>
            </div>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">Lưu lại</button>
            </div>
          </form>
        </div>
      </div>
    </div>
</div>
<div id="editBanner" class="modal hide" style="width: 768px !important">
    <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Chỉnh sửa Banner</h3>
    </div>
    <div class="modal-body">
    <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Chọn Thông Tin</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="{{route('update-config')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
          @csrf
            <input type="hidden" id="banner_edit" name="config_edit" value="banner"/>
            <div class="control-group">
              <label class="control-label">Upload Banner</label>
              <div class="controls">
                    <input id="uploadFileBanner" required type="file" name="banner_edit" class="img" />
              </div>
            </div>
            <div class="control-group">
                <div id="imagePreviewBanner"></div>
            </div>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">Lưu lại</button>
            </div>
          </form>
        </div>
      </div>
    </div>
</div>
@endsection
@section('scripts')
<script type= "text/javascript">
    $(document).ready(function(){
        $("#uploadFile").on("change", function()
        {
            var files = !!this.files ? this.files : [];
            if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
    
            if (/^image/.test( files[0].type)){ // only image file
                var reader = new FileReader(); // instance of the FileReader
                reader.readAsDataURL(files[0]); // read the local file
                $("#imagePreview").css({"width": "100%", "height": "300px"});
                reader.onloadend = function(){ // set image data as background of div
                    $("#imagePreview").css("background-image", "url("+this.result+")");
                }
            }
        });
        $("#uploadFileBanner").on("change", function()
        {
            var files = !!this.files ? this.files : [];
            if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
    
            if (/^image/.test( files[0].type)){ // only image file
                var reader = new FileReader(); // instance of the FileReader
                reader.readAsDataURL(files[0]); // read the local file
                $("#imagePreviewBanner").css({"width": "100%", "height": "300px"});
                reader.onloadend = function(){ // set image data as background of div
                    $("#imagePreviewBanner").css("background-image", "url("+this.result+")");
                }
            }
        });
    });
</script>

@stop

