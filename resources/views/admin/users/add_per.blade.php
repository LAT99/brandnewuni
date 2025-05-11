@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a  title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Quản lý nhân viên / cấp quyền nhân viên</a></div>
  </div>
<!--End-breadcrumbs-->
    <div class="container-fluid">
        <hr>
        <div class="row-fluid">
            <div class="span12">
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
                <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                    <h5></h5>
                </div>
                <div class="widget-content nopadding">
                <form method="POST" action="{{route('save-permission-user')}}">
                    <div class="modal-body">
                        @csrf
                    <input type="hidden" value="{{$staff->id}}" name="staff_id" id="staff_edit"/>
                    <div class="form-group">
                        <label for="edit_name" class="col-form-label">Họ và tên nhân viên</label>
                        <input type="text" class="form-control" value="{{$staff->name}}" required name="edit_name" disabled style="width: 97%" id="edit_name">
                    </div>
                    <div class="form-group">
                        <label for="edit_email" class="col-form-label">Địa chỉ email:</label>
                        <input type="text" class="form-control" value="{{$staff->email}}" required name="edit_email" disabled style="width: 97%" id="edit_email"></input>
                    </div>
                    <div class="form-group">
                        <label for="edit_email" class="col-form-label">Chọn quyền (Có thể chọn nhiều):</label>
                        @foreach($permissions as $per)
                        <input type="checkbox" class="form-control" name="permission[]" @if(in_array($per->name, $perUser)) checked @endif value="{{$per->name}}" style="width: 40px; height: 20px;margin-bottom: 7px;"/> {{$per->name}} <br>
                        @endforeach
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><a href="{{route('management-staff')}}">Quay lại</a></button>
                    <button type="submit" class="btn btn-primary">Cập nhật</button>
                </div>
                </form>
                </div>
                </div>
            </div>
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

