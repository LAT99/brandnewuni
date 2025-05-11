@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Quản lý quà tặng/ Quà tặng vật lý</a></div>
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
                            <button type="button" class="btn btn-primary">
                                <a style="color: white" href="{{route('management-gift-physical.add')}}">Thêm quà tặng mới</a>
                            </button>
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="container-fluid">
                            <hr>
                            <div class="table-responsive">
                            <table id="zero_config" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>stt</th>
                                        <th>Tên quà tặng</th>
                                        <th  style="width: 20%">Hình ảnh quà tặng</th>
                                        <th>Số lượng</th>
                                        <th>Số lượng còn lại</th>
                                        <th>Điểm quy đổi</th>
                                        <th>Trạng thái</th>
                                        <th>Tình trạng</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if(!empty($gifts))
                                        @foreach($gifts as $key => $gift)
                                            <tr>
                                                <?php $scoreX = (int)($gift->gift_qty) - get_qty_gift_used_physical($gift->id)?>
                                                <td>{{ $key+1 }}</td>
                                                <td>{{ $gift->gift_name }}</td>
                                                <td style="text-align: center"><img style="max-height: 300px; width: 70%; object-fit: contain" src="{{asset('images/gifts/')}}/{{$gift->image}}" alt=""></td>
                                                <td>{{ $gift->gift_qty }}</td>
                                                <td>
                                                    {{$scoreX}}
                                                </td>
                                                <td>{{ $gift->score }}</td>
                                                <td  style="text-align: center;">@if($gift->gift_status == 1) <span class="date badge badge-important">Hoạt động</span> @else <span class="by label">Không hoạt động </span> @endif</td>
                                                <td>
                                                    @if((int)($gift->gift_qty) == $scoreX)
                                                        Chưa được sử dụng
                                                    @else
                                                       Đang được sử dụng
                                                    @endif
                                                </td>
                                                <td style="text-align: center">
                                                    <div class="btn-group">
                                                        <button class="btn btn-info">Hành động</button>
                                                        <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle"><span class="caret"></span></button>
                                                        <ul class="dropdown-menu">
                                                            <li><a class="delete-gift" id="{{$gift->id}}" id="">Xóa</a></li>
                                                            <li><a class="" href="{{route('management-gift-physical.edit', ['gift_id' => $gift->id])}}">Chỉnh sửa</a></li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @endif
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>stt</th>
                                        <th>Tên quà tặng</th>
                                        <th  style="width: 40%">Hình ảnh quà tặng</th>
                                        <th>Số lượng</th>
                                        <th>Số lượng còn lại</th>
                                        <th>Điểm quy đổi</th>
                                        <th>Trạng thái</th>
                                        <th>Tình trạng</th>
                                        <th></th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <hr>
                    </div>
                </div>
            </div>
            
        </div>    
    <div>
</div>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editModal33" id="delete_gift" style="display: none">
  delete
</button>
<div class="modal fade" id="editModal33" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Thông báo</h3>
  </div>
  <div class="modal-body">
    <p>Bạn có chắc chắn xóa tin này</p>
  </div>
  <div class="modal-footer"> 
    <form action="{{route('management-gift-physical.delete-gift')}}" method="POST">
    @csrf
      <input type="hidden" name="gift_id" id="gift_id"/>
        <button class="btn btn-primary" type="submit" href="#">Xác nhận</button> 
    </form>
  </div>
</div>


@endsection
@section('scripts')
<script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
<script type= "text/javascript">
    $(document).ready(function(){
        $('.delete-gift').click(function() {
            var id = $(this).attr('id');
            $('#delete_gift').click();
            $('#gift_id').val(id);
        });
    });
</script>
<script>
    CKEDITOR.replace( 'news' );
</script>
@stop

