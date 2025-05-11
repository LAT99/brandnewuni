@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Quản lý quà tặng/ Quà tặng vật lý/ Thêm mới</a></div>
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
                                            <h5>Thêm quà tặng vật lý</h5>
                                        </div>
                                        <div class="widget-content"> 
                                            <form action="{{route('management-gift-physical.update')}}" method="POST"  enctype="multipart/form-data">
                                            @csrf
                                                <input type="hidden" name="gift_id" value="{{$gift->id}}"/>
                                                <div class="row-fluid">
                                                    <div class="widget-content notify-ui" style="border-bottom: none; padding-bottom: 0px">
                                                        <div class="control-group">
                                                            <label class="control-label">Nhập tên quà tặng :</label>
                                                            <div class="controls">
                                                                <input type="text" class="span11" autocomplete="off" name="gift_name" style="width: 95%" required="" value="{{$gift->gift_name}}" placeholder="Nhập tên quà tặng">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                             
                                                <div class="row-fluid">
                                                    <div class="widget-content notify-ui" style="border-bottom: none; padding-bottom: 0px">
                                                        <div class="control-group">
                                                            <label class="control-label">Chọn ảnh:</label>
                                                            <div class="controls">
                                                                <input id="uploadFile" type="file" name="gift_image" class="img" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row-fluid hidden-class">
                                                    <div class="widget-content notify-ui" style="border-bottom: none">
                                                        <div class="control-group">
                                                            <div id="" style="width: 50%;">
                                                                <img style="max-height: 300px; width: 100%; object-fit: contain" src="{{asset('images/gifts/')}}/{{$gift->image}}" alt="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row-fluid show-image" style="display: none">
                                                    <div class="widget-content notify-ui" style="border-bottom: none; padding-bottom: 0px; width: 50%">
                                                        <div class="control-group">
                                                            <div id="imagePreview"></div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row-fluid">
                                                    <div class="widget-content notify-ui" style="border-bottom: none; padding-bottom: 0px">
                                                        <div class="control-group">
                                                            <label class="control-label">Nhập số lượng:</label>
                                                            <input id="gift_qty" autocomplete="off" required type="number" value="{{$gift->gift_qty}}" name="gift_qty" class="img" />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row-fluid">
                                                    <div class="widget-content notify-ui" style="border-bottom: none; padding-bottom: 0px">
                                                        <div class="control-group">
                                                            <label class="control-label">Nhập số điểm qui đổi:</label>
                                                            <input id="gift_score" autocomplete="off" required type="number" value="{{$gift->score}}" name="gift_score" class="img" />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row-fluid">
                                                    <div class="widget-content notify-ui" style="border-bottom: none">
                                                        <div class="control-group">
                                                            <label class="control-label">Trạng thái :</label>
                                                            <div class="controls" style="margin-left: 65px;">
                                                                <input type="radio" name="status_gift" id="status_1" value= "1" @if($gift->gift_status == 1) checked @endif style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Hoạt động</span> <br/>
                                                                <input type="radio" name="status_gift" id="status_0" value="0" @if($gift->gift_status == 0) checked @endif style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Không hoạt động</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row-fluid">
                                                    <div class="form-actions">
                                                        <button type="submit" class="btn btn-success">Lưu lại</button>
                                                    </div>
                                                </div>
                                                
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button id="btn1" type="button" class="btn btn-primary" style="margin-top:20px"><a style="color: white" href="{{route('management-gift-physical')}}">Quay lại</a></button>
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
            $('.hidden-class').css("display", "none");
            var files = !!this.files ? this.files : [];
            if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
    
            if (/^image/.test( files[0].type)){ // only image file
                $('.show-image').show();
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
</script>
@stop

