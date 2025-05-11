@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Quản lý đại lý</a></div>
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
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#createStaff">
                                Thêm đại lý mới
                            </button><br/></br>
                            <button type="submit" class="btn btn-danger">
                                <a style="color: white" href="{{route('export')}}">Xuất danh xuất CSV đại lý</a>
                            </button>
                        </h5>
                        <div class="table-responsive">
                            <table id="zero_config" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>Họ và Tên</th>
                                        <th>Email</th>
                                        <th>Trạng thái</th>
                                        <th>Số điện thoại</th>
                                        <th>Địa chỉ</th>
                                        <th>Đối tượng tham gia</th>
                                        <th>Nơi làm việc</th>
                                        <th>Ngày tạo</th>
                                        <th>Điểm</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($staffs as $staff)
                                    <tr>
                                        <td  style="text-align: center;">{{$staff->name}}</td>
                                        <td  style="text-align: center;">{{$staff->email}}</td>
                                        <td  style="text-align: center;">@if($staff->status == 1) <span class="date badge badge-important">Đã kích hoạt</span> @else <span class="by label">Chưa kích hoạt </span> @endif</td>
                                        <td  style="text-align: center;">{{$staff->phone}}</td>
                                        <td  style="text-align: center;">{{$staff->address}}</td>
                                        <td  style="text-align: center;">
                                        @if($staff->participants == 1)
                                        Nhân viên Đại lý
                                        @elseif($staff->participants == 2)
                                        Nhân viên NPP
                                        @elseif($staff->participants == 3)
                                        Nhân viên PG/PB
                                        @endif
                                      </td>
                                        <td  style="text-align: center;">{{$staff->place_work}}</td>
                                        <td  style="text-align: center;">{{$staff->created_at}}</td>
                                        <td  style="text-align: center;">{{get_score($staff->id)}}</td>
                                        <td  style="text-align: center;">
                                        <div class="btn-group">
                                            <button class="btn btn-info">Hành động</button>
                                            <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle"><span class="caret"></span></button>
                                            <ul class="dropdown-menu">
                                                <li><a class="delete-question" id="delete_{{$staff->id}}" id="">Xóa</a></li>
                                                <li><a class="" href="{{route('edit_mn_staff', ['staff_id'=>$staff->id])}}" id="edit_{{$staff->id}}">Edit</a></li>
                                                <li><a class="" href="{{route('history-score', ['staff'=>$staff->id])}}" id="">Lịch sử điểm</a></li>
                                            </ul>
                                        </div>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Họ và Tên</th>
                                        <th>Email</th>
                                        <th>Trạng thái</th>
                                        <th>Số điện thoại</th>
                                        <th>Địa chỉ</th>
                                        <th>Đối tượng tham gia</th>
                                        <th>Nơi làm việc</th>
                                        <th>Ngày tạo</th>
                                        <th>Điểm</th>
                                        <th></th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>    
    <div>
</div>
<!-- Modal -->
<div class="modal fade" id="createStaff" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLL" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabelLL">Tạo mới nhân viên</h5>
      </div>
      <form method="POST" action="{{route('create-staff')}}">
      @csrf
        <div class="modal-body">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Họ và tên:</label>
                <input type="text" class="form-control" required name="name" style="width: 97%" id="recipient-name" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="message_text" class="col-form-label">Địa chỉ email:</label>
            <input type="email" class="form-control" required name="email" style="width: 97%" id="message_text"></input>
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Mật khẩu mặc định:</label>
            <input type="text" value="123456789" required class="form-control" name="pwd" style="width: 97%" id="message-text"></input>
          </div>
          <div class="form-group">
            <label for="phone" class="col-form-label">Số điện thoại:</label>
            <input type="text" class="form-control" name="phone" style="width: 97%" id="phone"></input>
          </div>
          <div class="form-group">
            <label for="address" class="col-form-label">Địa chỉ :</label>
            <input type="text" class="form-control" name="address" style="width: 97%" id="address"></input>
          </div>
          <div class="form-group">
            <label for="participants" class="col-form-label">Đối tượng tham gia :</label>
            <select class="form-control @error('participants') is-invalid @enderror" id="participants" name="participants" autocomplete="" required style="width: 97%">
                <option value="1" @if(old('participants') == 1) selected @endif>Nhân viên Đại lý</option>
                <option value="2" @if(old('participants') == 2) selected @endif>Nhân viên NPP</option>
                <option value="3" @if(old('participants') == 3) selected @endif>Nhân viên PG/PB</option>
            </select>
          </div>
          <div class="form-group">
            <label for="place_work" class="col-form-label">Nơi làm việc :</label>
            <input type="text" class="form-control" name="place_work" style="width: 97%" id="place_work"></input>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
          <button type="submit" class="btn btn-primary">Tạo</button>
        </div>
      </form>
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
    <p>Bạn có chắc chắn xóa tài khoản <code id="email_delete"></code></p>
  </div>
  <div class="modal-footer"> 
    <form action="{{route('staff-delete')}}" method="POST">
    @csrf
      <input type="hidden" name="staff_delete" id="staff_delete"/>
        <button class="btn btn-primary" type="submit" href="#">Xác nhận</button> 
    </form>
  </div>
</div>
@endsection
@section('scripts')

<script type= "text/javascript">
    $(document).ready(function(){        
      $('.delete-question').click(function(){
        $('#email_delete').html('');
        $('#staff_delete').val('');
          var temp = $(this).attr('id');
          var id = temp.replace('delete_','');
          $('#staff_delete').val(id);
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: "POST",
                url: "{{route('edit_staff')}}",
                data: {'staff_id': id},
                cache: false,
                success: function(data){
                    if(data.status == true){
                      $('#email_delete').html(data.email);
                      $('#delete_staff').click();
                    }
                }
            });

      });
      });
</script>

@stop