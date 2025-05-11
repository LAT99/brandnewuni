@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Quản lý tin tức</a></div>
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
                        <div class="container-fluid">
                            <hr>
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                        <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                            <h5>Thêm tin mới</h5>
                                        </div>
                                        <div class="widget-content"> 
                                            <form action="{{route('management-news')}}" method="POST"  enctype="multipart/form-data">
                                            @csrf
                                            
                                                <div class="row-fluid">
                                                    <div class="widget-content notify-ui" style="border-bottom: none">
                                                        <div class="control-group">
                                                            <label class="control-label">Nhập chủ đề :</label>
                                                            <div class="controls">
                                                                <input type="text" class="span11" name="title" style="width: 95%" required="" value="" placeholder="Vui lòng nhập chủ đề">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                             
                                                <div class="row-fluid">
                                                    <div class="widget-content notify-ui" style="border-bottom: none">
                                                        <div class="control-group">
                                                            <label class="control-label">Chọn ảnh đại diện :</label>
                                                            <div class="controls">
                                                                <input id="uploadFile" required type="file" name="image" class="img" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row-fluid">
                                                    <div class="widget-content notify-ui" style="border-bottom: none">
                                                        <div class="control-group">
                                                            <div id="imagePreview"></div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row-fluid">
                                                    <div class="widget-content notify-ui" style="border-bottom: none">
                                                        <div class="control-group">
                                                            <label class="control-label">Nội dung rút gọn :</label>
                                                            <div class="controls">
                                                                <textarea name="content_short" style="width: 95%"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row-fluid">
                                                    <div class="widget-content notify-ui">
                                                        <label class="control-label">Nội dung chi tiết :</label>
                                                        <div class="controls">
                                                            <textarea name="content_detail" required style="width: 100%"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="form-actions">
                                                        <button type="submit" class="btn btn-success">Lưu lại</button>
                                                    </div>
                                                </div>
                                                
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button id="btn1" type="button" class="btn btn-primary" style="margin-top:20px"><a style="color: white" href="{{route('management-news')}}">Quay lại</a></button>
                            <hr>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>    
    <div>
</div>



@endsection
@section('scripts')
<script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
<script type= "text/javascript">
    $(document).ready(function(){
        $("#uploadFile").on("change", function()
        {
            var files = !!this.files ? this.files : [];
            if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
    
            if (/^image/.test( files[0].type)){ // only image file
                var reader = new FileReader(); // instance of the FileReader
                reader.readAsDataURL(files[0]); // read the local file
                $("#imagePreview").css({"width": "95%", "height": "300px"});
                reader.onloadend = function(){ // set image data as background of div
                    $("#imagePreview").css("background-image", "url("+this.result+")");
                }
            }
        });
    });
</script>
<script>
    CKEDITOR.replace( 'content_detail' );
</script>
@stop

