@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a  title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Quản lý nhân viên / chỉnh sửa</a></div>
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
                <form method="POST" action="{{route('staff-update')}}">
                    <div class="modal-body">
                        @csrf
                    <input type="hidden" value="{{$staff->id}}" name="staff_id" id="staff_edit"/>
                    <div class="form-group">
                        <label for="edit_name" class="col-form-label">Họ và tên:</label>
                        <input type="text" class="form-control" value="{{$staff->name}}" required name="edit_name" style="width: 97%" id="edit_name">
                    </div>
                    <div class="form-group">
                        <label for="edit_email" class="col-form-label">Địa chỉ email:</label>
                        <input type="text" class="form-control" disabled value="{{$staff->email}}" required name="" style="width: 97%" id="edit_email"></input>
                        <input type="hidden" name="edit_email" value="{{$staff->email}}"/>
                    </div>
                    <div class="form-group">
                        <label for="edit_phone" class="col-form-label">Số điện thoại:</label>
                        <input type="text" class="form-control" name="edit_phone" value="{{$staff->phone}}" style="width: 97%" id="edit_phone"></input>
                    </div>
                    <div class="form-group">
                        <label for="edit_address" class="col-form-label">Địa chỉ :</label>
                        <input type="text" class="form-control" name="edit_address" value="{{$staff->address}}" style="width: 97%" id="edit_address"></input>
                    </div>
                    <div class="form-group">
                        <label for="edit_participants" class="col-form-label">Đối tượng tham gia :</label>
                        <select class="form-control @error('edit_participants') is-invalid @enderror" id="edit_participants" name="edit_participants" autocomplete="" required style="width: 97%">
                            <option value="1" @if(old('edit_participants') == 1 || $staff->participants == 1) selected @endif>Nhân viên Đại lý</option>
                            <option value="2" @if(old('edit_participants') == 2 || $staff->participants == 2) selected @endif>Nhân viên NPP</option>
                            <option value="3" @if(old('edit_participants') == 3 || $staff->participants == 3) selected @endif>Nhân viên PG/PB</option>
                        </select>
                        <!-- <input type="text" class="form-control" name="edit_participants" value="{{$staff->participants}}" style="width: 97%" id="edit_participants"></input> -->
                    </div>
                    <div class="form-group">
                        <label for="edit_place_work" class="col-form-label">Nơi làm việc :</label>
                        <input type="text" class="form-control" name="edit_place_work" value="{{$staff->place_work}}" style="width: 97%" id="edit_place_work"></input>
                    </div>
                    <div class="form-group">
                        <label for="edit_place_work" class="col-form-label">Trạng thái :</label>
                        <input type="checkbox" class="form-control" name="status" @if($staff->status == 1) checked @endif value="1" style="width: 40px; height: 20px;margin-bottom: 7px;" id=""><span style="font-size: 14px">Kích hoạt</span></input>
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

