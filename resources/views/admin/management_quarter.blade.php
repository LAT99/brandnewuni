@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Quản lý Quý</a></div>
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
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                                Thêm Quý mới
                            </button>
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="container-fluid">
                            <hr>
                            @foreach($quartersList as $yearT => $quarters)
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                    <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                        <h5>Năm <code>{{$yearT}}</code></h5>
                                    </div>
                                    <div class="widget-content"> 
                                        <div class="row-fluid">
                                            @foreach($quarters as $detail)
                                            <div class="span3">
                                                <div class="widget-box" style="margin-top: 0px">
                                                    <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                                        <h5>Quý <code>{{$detail['month']}}</code></h5>
                                                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modelEdit"><i class="icon-edit edit-quarter" id="quarter_{{$detail['id']}}"></i></button>
                                                    </div>
                                                    <div class="widget-content" >
                                                        <img style="max-height: 100px; width: 100%; object-fit: contain" src="{{asset('images/quarter/')}}/{{$detail['name']}}" alt="">
                                                    </div>
                                                    <div class="widget-content">
                                                        <div id="" class="introVid4 video-container video box-video" style="background-position: center; background-repeat: no-repeat;background-size: cover;opacity: 0.8;">
                                                          <image class="hidden_image_bg" src ="{{asset('images/quarter/')}}/{{$detail['name']}}" style="object-fit: fill;"/>    
                                                          <div class="bt-play"></div>
                                                            <div id="videoContainer" style="display:none">
                                                                <div class="embed-responsive embed-responsive-21by9" style="position: unset !important;">
                                                                    <video src="{{asset('videos/quarter/')}}/{{$detail['video']}}" controls width= "100%" style="max-height: 194px !important"></video>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="widget-title" style="text-align: center">
                                                      <h5 style="float: none;"> @if($detail['status'] == 1)<code>Trạng thái: Hoạt động</code> @else <code>Trạng thái: Không Hoạt động</code> @endif</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
            
        </div>    
    <div>
</div>
<!-- Modal -->
<div id="myModal" class="modal hide">
    <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Thêm Quý mới</h3>
    </div>
    <div class="modal-body">
    <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Chọn Thông Tin</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="{{route('create-quarter')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
          @csrf
            <div class="control-group">
              <label class="control-label">Chọn năm</label>
              <div class="controls">
                <select name="year">
                  <option value="2021">2021</option>
                  <option value="2022">2022</option>
                  <option value="2023">2023</option>
                  <option value="2024">2024</option>
                  <option value="2025">2025</option>
                  <option value="2026">2026</option>
                  <option value="2027">2027</option>
                  <option value="2028">2028</option>
                  <option value="2029">2029</option>
                  <option value="2030">2030</option>
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Chọn Quý</label>
              <div class="controls">
                <select name="month">
                  <option value="1">Quý I</option>
                  <option value="2">Quý II</option>
                  <option value="3">Quý III</option>
                  <option value="4">Quý IV</option>
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Upload hình nền Quý</label>
              <div class="controls">
                    <input id="uploadFile" required type="file" name="image" class="img" />
              </div>
            </div>
            <div class="control-group">
                <div id="imagePreview"></div>
            </div>
            <div class="control-group">
              <label class="control-label">Upload video Training</label>
              <div class="controls">
                    <input id="uploadFile" required type="file" name="video" class="" />
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

<div id="modelEdit" class="modal hide">
    <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Chỉnh sửa Quý</h3>
    </div>
    <div class="modal-body">
    <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Chọn Thông Tin</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="{{route('update-quarter')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
          @csrf
          <input type="hidden" name="quarter_id" id="quarter_id"/>
            <div class="control-group">
              <label class="control-label">Chọn năm</label>
              <div class="controls">
                <select name="year_edit" id="year_edit">
                  <option value="2021">2021</option>
                  <option value="2022">2022</option>
                  <option value="2023">2023</option>
                  <option value="2024">2024</option>
                  <option value="2025">2025</option>
                  <option value="2026">2026</option>
                  <option value="2027">2027</option>
                  <option value="2028">2028</option>
                  <option value="2029">2029</option>
                  <option value="2030">2030</option>
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Chọn Quý</label>
              <div class="controls">
                <select name="month_edit" id="month_edit">
                  <option value="1">Quý I</option>
                  <option value="2">Quý II</option>
                  <option value="3">Quý III</option>
                  <option value="4">Quý IV</option>
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Trạng thái</label>
              <div class="controls">
                  <input type="radio" name="status_edit" id="status_1" value= "1" style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Hoạt động</span> <br/>
                  <input type="radio" name="status_edit" id="status_0" value="0" style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Không hoạt động</span>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Upload hình nền Quý</label>
              <div class="controls">
                    <input id="uploadFileEdit" type="file" name="image_edit" class="img" />
              </div>
            </div>
            <div class="control-group" id="oldImage">
            </div>
            <div class="control-group">
                <div id="imagePreviewEdit"></div>
            </div>
            <div class="control-group">
              <label class="control-label">Upload video Training</label>
              <div class="controls">
                    <input id="uploadFileEdit" type="file" name="video_edit" class="" />
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
        $("#uploadFileEdit").on("change", function()
        {
            $('#oldImage').html('');
            var files = !!this.files ? this.files : [];
            if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
    
            if (/^image/.test( files[0].type)){ // only image file
                var reader = new FileReader(); // instance of the FileReader
                reader.readAsDataURL(files[0]); // read the local file
                $("#imagePreviewEdit").css({"width": "100%", "height": "300px"});
                reader.onloadend = function(){ // set image data as background of div
                    $("#imagePreviewEdit").css("background-image", "url("+this.result+")");
                }
            }
        });
        $('.introVid4').click(function() {
            $(this).find(".bt-play").removeClass('bt-play');
            // $(this).find("iframe")[0].src += "?autoplay=1&loop=1&rel=0&wmode=transparent?";
            $(this).find("video").trigger('play');
            setTimeout(function(){ 
              $(this).find('.hidden_image_bg').css("display", "none");
                $(this).find("#videoContainer").show();
            }.bind(this), 1000); // 1000 being 1s in ms
        });

        $('.edit-quarter').click(function(){
            $("#status_1").prop("checked", false);
            $("#status_0").prop("checked", false);
            $('#quarter_id').val('');
            $('#oldImage').html('');
            $("#imagePreviewEdit").css({"width": "100%", "height": "0px"});
            $('#uploadFileEdit').val('');
            var temp = $(this).attr('id');
            var id = temp.replace('quarter_','');
            $('#quarter_id').val(id);
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: "POST",
                url: "{{route('edit-quarter')}}",
                data: {'quarter_id': id},
                cache: false,
                success: function(data){
                    console.log(data);
                    if(data.status == true){
                        $("#month_edit option[value="+data.month+"]").prop("selected", "selected");
                        $("#year_edit option[value="+data.year+"]").prop("selected", "selected");
                        $("#status_"+data.status_field).prop("checked", true);
                        $('#oldImage').append(showImage(data.name));
                    }
                }
            });
        });
        function showImage(value) {
            return '<div style="height:300px; width: 100%;">' + 
            '<image src="'+value+'" id="showImage"/>' +
            '</div>'
        }
    });
</script>

@stop

