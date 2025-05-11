@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Quản lý video</a></div>
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
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#createVideo">
                                Thêm video mới
                            </button>
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="container-fluid">
                            <hr>
                            @foreach($quarters as $quarter)
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                    <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                        <h5>Năm <code>{{$quarter['year']}}</code> / Qúy <code>{{$quarter['month']}}</code></h5>
                                    </div>
                                    <div class="widget-content"> 
                                        <div class="row show-grid" style="margin-left: 25px">
                                            <div class="span4" data-original-title style="margin-left: 0px;">
                                                <div class="widget-box" style="margin-top: 0px">
                                                    <div class="widget-content">
                                                        <div id="" class="introVid4 video-container video box-video" style="background-position: center; background-repeat: no-repeat;background-size: cover;opacity: 0.8;">
                                                          <image class="hidden_image_bg" src ="{{asset('images/quarter/')}}/{{$quarter['name']}}" style="object-fit: contain;"/>    
                                                          <div class="bt-play"></div>
                                                            <div id="videoContainer" style="display:none">
                                                                <div class="embed-responsive embed-responsive-21by9" style="position: unset !important;text-align: center;">
                                                                    <video src="{{asset('videos/quarter/')}}/{{$quarter['video']}}" controls width= "100%" style="max-height: 404px;"></video>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="widget-title" style="text-align: center">
                                                      <a><h5 style="float: none;">  <code>Video chính</code> </h5></a>
                                                    </div>
                                                </div>
                                            </div>
                                            @if(!empty($quarter['video_management']))
                                            @foreach($quarter['video_management'] as $videoDetail)
                                            <div class="span4" data-original-title style="margin-left: 0px">
                                                <div class="widget-box" style="margin-top: 0px;">
                                                    <div class="widget-content">
                                                        <div id="" class="introVid4 video-container video box-video" style="background-position: center; background-repeat: no-repeat;background-size: cover;opacity: 0.8;">
                                                          <image class="hidden_image_bg" src ="{{asset('images/quarter/')}}/{{$videoDetail['image']}}" style="object-fit: contain;"/>    
                                                          <div class="bt-play"></div>
                                                            <div id="videoContainer" style="display:none">
                                                                <div class="embed-responsive embed-responsive-21by9" style="position: unset !important;text-align: center;">
                                                                    <video src="{{asset('videos/quarter/')}}/{{$videoDetail['video']}}" controls width= "100%" style="max-height: 404px;"></video>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="widget-title" style="text-align: center">
                                                        <a href="#" id="{{$videoDetail['id']}}" class="delete-video"><h5 style="float: none;">  <code>Xóa</code> </h5></a>
                                                    </div>
                                                </div>
                                            </div>
                                            @endforeach
                                            @endif
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
<div id="createVideo" class="modal hide" style="width: 768px !important">
    <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Thêm video</h3>
    </div>
    <div class="modal-body">
    <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Nhập Thông Tin</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="{{route('create-videos')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
          @csrf
            <div class="control-group">
                <label class="control-label">Chọn Quý</label>
                <div class="controls">
                    <select name="id_training" required>
                        @foreach($quartersList as $quarter)
                        <option value="{{$quarter->id}}">Quý {{$quarter->month}}/{{$quarter->year}}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="control-group">
              <label class="control-label">Upload hình nền:</label>
              <div class="controls">
                <input id="uploadFile" required type="file" name="image" class="img" />
              </div>
            </div>
            <div class="control-group">
                <div id="imagePreview"></div>
            </div>
            <div class="control-group">
              <label class="control-label">Upload video:</label>
              <div class="controls">
                <input id="file-input" name="video" required type="file" accept="video/*">
                <video id="video" width="400" height="" controls class="hidden-create-video"  style="margin-top:20px"></video>
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
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editModal33" id="delete_staff" style="display: none">
  delete
</button>
<div class="modal fade" id="editModal33" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Thông báo</h3>
  </div>
  <div class="modal-body">
    <p>Bạn có chắc chắn xóa video này</p>
  </div>
  <div class="modal-footer"> 
    <form action="{{route('delete-videos')}}" method="POST">
    @csrf
      <input type="hidden" name="video_id" id="video_id"/>
        <button class="btn btn-primary" type="submit" href="#">Xác nhận</button> 
    </form>
  </div>
</div>


@endsection
@section('scripts')
<script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
<script>
    const input = document.getElementById('file-input');
const video = document.getElementById('video');
const videoSource = document.createElement('source');

input.addEventListener('change', function() {
  const files = this.files || [];

  if (!files.length) return;
  
  const reader = new FileReader();

  reader.onload = function (e) {
    videoSource.setAttribute('src', e.target.result);
    video.appendChild(videoSource);
    video.classList.remove("hidden-create-video");
    video.load();
    video.play();
  };
  
  reader.onprogress = function (e) {
    console.log('progress: ', Math.round((e.loaded * 100) / e.total));
  };
  
  reader.readAsDataURL(files[0]);
});
</script>
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
        $('.delete-video').click(function() {
            var id = $(this).attr('id');
            $('#video_id').val('');
            $('#delete_staff').click();
            $('#video_id').val(id);
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
        
    });
</script>
<script>
</script>
@stop

