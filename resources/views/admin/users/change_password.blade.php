@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Thay đổi mật khẩu</a></div>
  </div>

<!--End-breadcrumbs-->
    <div class="container-fluid">
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
        <hr>
        <input type="hidden" value="1" id="count_div"/>
        <form action="{{route('update-pass-staff')}}" method="post" class="form-horizontal">
         @csrf
        <div class="row-fluid">
           
            <div class="span12" id="add_question">
                <div class="widget-box count-question">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>Tài khoản: {{Auth::user()->name}}</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <div class="control-group">
                            <label class="control-label">Mật khẩu hiện tại :</label>
                            <div class="controls">
                            <input type="password" class="span11" name="password_old" required value="{{old('password_old')}}" placeholder="Vui lòng nhập mật khẩu hiện tại" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Mật khẩu mới :</label>
                            <div class="controls">
                            <input type="password" class="span11" name="password_new"required value="{{old('password_new')}}" placeholder="Vui lòng nhập mật khẩu mới" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Nhập lại mật khẩu mới :</label>
                            <div class="controls">
                            <input type="password" class="span11" name="password_new_confirmation" required value="{{old('password_new_confirmation')}}" placeholder="Vui lòng nhập lại mật khẩu mới" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-actions">
                <button type="submit" class="btn btn-success">Cập nhập</button>
            </div>
            </from>
        </div>
    </div>
</div>
<!-- Modal -->
@endsection
@section('scripts')
<script type= "text/javascript">
    $(document).ready(function(){        
        
    });
</script>

@stop

