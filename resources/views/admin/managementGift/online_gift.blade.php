@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Quản lý quà tặng / Quà tặng online</a></div>
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
                          <button type="button" class="btn btn-warning">
                                <a href="{{asset('template_excel/card_online.xlsx')}}" style="color: white">Mẫu excel import thẻ nạp</a>
                            </button>
                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#createStaff">
                                Import thẻ nạp bằng file excel
                            </button>
                            <button type="button" class="btn btn-primary">
                                <a href="{{route('export-list-card-admin')}}" style="color: white">Xuất file Excel danh sách card và tình trạng card</a>
                            </button>
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="container-fluid">
                            <hr>
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                        <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                            <div>
                                                <h5>Danh sách các nhà cung cấp</h5>
                                            </div>
                                            <div>
                                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#createProvider" style="margin-top: 3px;">
                                                    Thêm nhà cung cấp
                                                </button>
                                            </div>
                                        </div>
                                        <div class="widget-content"> 
                                            <div class="table-responsive">
                                                <table id="zero_config" class="table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>stt</th>
                                                            <th>Nhà cung cấp</th>
                                                            <th>Trạng thái</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @if(!empty($providerLists))
                                                            @foreach($providerLists as $key => $provider)
                                                            <tr>
                                                                <td>{{ $key+1 }}</td>
                                                                <td>{{ $provider->provider_name }}</td>
                                                                <td>@if($provider->status == 1) Đã kích hoạt @else Không hoạt động @endif</td>
                                                                <td style="text-align: center">
                                                                    <div class="btn-group">
                                                                        <button class="btn btn-info">Hành động</button>
                                                                        <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle"><span class="caret"></span></button>
                                                                        <ul class="dropdown-menu">
                                                                            <li><a class="delete-provider" id="{{$provider->id}}" id="">Xóa</a></li>
                                                                            <li><a class="edit-provider" id="{{$provider->id}}">Chỉnh sửa</a></li>
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
                                                            <th>Nhà cung cấp</th>
                                                            <th>Trạng thái</th>
                                                            <th></th>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="container-fluid">
                            <hr>
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                        <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                            <div>
                                                <h5>Danh sách các mã nạp và phiếu giảm giá</h5>
                                            </div>
                                            <div>
                                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#createCard" style="margin-top: 3px;">
                                                    Thêm thẻ nạp
                                                </button>
                                            </div>
                                        </div>
                                        <div class="widget-content"> 
                                            <div class="table-responsive">
                                                <table id="zero_config" class="table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>stt</th>
                                                            <th>Mã nạp</th>
                                                            <th>Số seri</th>
                                                            <th>Mệnh giá</th>
                                                            <th>Nhà cung cấp</th>
                                                            <th>Trạng thái</th>
                                                            <th>Tình trạng</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @if(!empty($cards))
                                                            @foreach($cards as $key => $card)
                                                            <tr>
                                                                <td>{{ $key+1 }}</td>
                                                                <td>
                                                                  @if(auth()->user()->can('management'))
                                                                    {{ $card->code_number }}
                                                                  @else
                                                                    ************
                                                                  @endif
                                                                </td>
                                                                <td>{{ $card->seri_number }}</td>
                                                                <td>{{ $card->price }}</td>
                                                                <td>{{ $providerName[$card->provider_id] }}</td>
                                                                <td>@if($card->status == 1) <span class="date badge badge-info">Đã kích hoạt </span>@else <span class="by label">Chưa kích hoạt</span> @endif</td>
                                                                <td  style="text-align: center;">@if($card->is_used == 0) <span class="date badge badge-important">Chưa sử dụng</span> @else <span class="by label">Đã sử dụng </span> @endif
                                                                <td style="text-align: center">
                                                                    <div class="btn-group">
                                                                        <button class="btn btn-info">Hành động</button>
                                                                        <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle"><span class="caret"></span></button>
                                                                        <ul class="dropdown-menu">
                                                                            @if($card->is_used == 0)
                                                                            <li><a class="delete-card" id="{{$card->id}}" id="">Xóa</a></li>
                                                                            @endif
                                                                            <li><a class="edit-card" id="{{$card->id}}">Chỉnh sửa</a></li>
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
                                                            <th>Mã nạp</th>
                                                            <th>Số seri</th>
                                                            <th>Mệnh giá</th>
                                                            <th>Nhà cung cấp</th>
                                                            <th>Trạng thái</th>
                                                            <th>Tình trạng</th>
                                                            <th></th>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                    </div>
                </div>
            </div>
            
        </div>    
    <div>
</div>
<div class="modal fade" id="createStaff" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLL" aria-hidden="true" style="display: none">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabelLL">Import mã nạp thẻ(Thẻ ở trạng thái chưa hoạt động)</h5>
      </div>
      <form method="POST" action="{{route('management-gift-online.import')}}"  enctype="multipart/form-data">
      @csrf
        <div class="modal-body">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Upload file (File upload ở định dạng Excel)*:</label>
                <input type="file" class="form-control" required name="file_card" style="width: 97%" id="recipient-name" autocomplete="off">
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
<div class="modal fade" id="createProvider" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLL" aria-hidden="true" style="display: none">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabelLL">Thêm nhà cung cấp mới</h5>
      </div>
      <form method="POST" action="{{route('management-gift-online.provider.create')}}"  enctype="multipart/form-data">
      @csrf
        <div class="modal-body">
            <div class="form-group">
            <label for="recipient-name" class="col-form-label">Tên nhà cung cấp*: </label>
                <input type="text" class="form-control" required name="provider_name" style="width: 97%" id="recipient-name" autocomplete="off">
            </div>
            <div class="control-group">
                <label class="control-label">Thể loại :</label>
                <div class="controls" style="margin-left: 65px;">
                    <input type="radio" name="provider_type" id="status_1" value= "1" checked style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Card điện thoại</span> <br/>
                    <input type="radio" name="provider_type" id="status_0" value="2" style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Phiếu mua hàng</span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Trạng thái :</label>
                <div class="controls" style="margin-left: 65px;">
                    <input type="radio" name="status" id="status_1" value= "1" checked style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Hoạt động</span> <br/>
                    <input type="radio" name="status" id="status_0" value="0" style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Không hoạt động</span>
                </div>
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
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editModal33" id="delete_gift" style="display: none">
  delete
</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editModal44" id="delete_card" style="display: none">
  delete
</button>
<div class="modal fade" id="editModal33" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Thông báo</h3>
  </div>
  <div class="modal-body">
    <p>Bạn có chắc chắn xóa?</p>
  </div>
  <div class="modal-footer"> 
    <form action="{{route('management-gift-online.provider.delete')}}" method="POST">
    @csrf
      <input type="hidden" name="provider_id" id="provider_id"/>
        <button class="btn btn-primary" type="submit" href="#">Xác nhận</button> 
    </form>
  </div>
</div>
<div class="modal fade" id="editModal44" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="display: none">
  <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Thông báo</h3>
  </div>
  <div class="modal-body">
    <p>Bạn có chắc chắn xóa?</p>
  </div>
  <div class="modal-footer"> 
    <form action="{{route('management-gift-online.card.delete')}}" method="POST">
    @csrf
      <input type="hidden" name="card_id" id="card_id"/>
        <button class="btn btn-primary" type="submit" href="#">Xác nhận</button> 
    </form>
  </div>
</div>
<!-- edit provider -->
<div class="modal fade" id="editProvider" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLL" aria-hidden="true" style="display: none">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabelLL">Thêm nhà cung cấp mới</h5>
      </div>
      <form method="POST" action="{{route('management-gift-online.provider.update')}}"  enctype="multipart/form-data">
      @csrf
        <div class="modal-body">
            <input type="hidden" id="provider_id_edit" name="provider_id_edit"/>
            <div class="form-group">
            <label for="recipient-name" class="col-form-label">Tên nhà cung cấp*: </label>
                <input type="text" class="form-control" required name="provider_name_edit" style="width: 97%" id="provider_name_edit" autocomplete="off">
            </div>
            <div class="control-group">
                <label class="control-label">Thể loại :</label>
                <div class="controls" style="margin-left: 65px;">
                    <input type="radio" name="provider_type_edit" class="provider_type_edit" id="provider_type_edit_1" value= "1" checked style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Card điện thoại</span> <br/>
                    <input type="radio" name="provider_type_edit" class="provider_type_edit" id="provider_type_edit_2" value="2" style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Phiếu mua hàng</span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Trạng thái :</label>
                <div class="controls" style="margin-left: 65px;">
                    <input type="radio" name="status_edit" class="status_edit" id="status_edit_1" value= "1" checked style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Hoạt động</span> <br/>
                    <input type="radio" name="status_edit" class="status_edit"  id="status_edit_0" value="0" style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Không hoạt động</span>
                </div>
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
          <button type="submit" class="btn btn-primary">Cập nhật</button>
        </div>
      </form>
    </div>
  </div>
</div>
<!-- edit card -->
<div class="modal fade" id="editCard" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLL" aria-hidden="true" style="display: none">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabelLL">Thêm nhà cung cấp mới</h5>
      </div>
      <form method="POST" action="{{route('management-gift-online.card.update')}}"  enctype="multipart/form-data">
      @csrf
        <div class="modal-body">
            <input type="hidden" id="edit_card_id" name="edit_card_id"/>
            <div class="form-group">
              <label for="recipient-name" class="col-form-label">Mã nạp*: </label>
                <input type="text" class="form-control" required name="code_number_edit" style="width: 97%" id="code_number_edit" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="recipient-name" class="col-form-label">Số seri*: </label>
                <input type="text" class="form-control" required name="seri_number_edit" style="width: 97%" id="seri_number_edit" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="recipient-name" class="col-form-label">Mệnh giá*: </label>
                <input type="text" class="form-control" required name="price_number_edit" style="width: 97%" id="price_number_edit" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="recipient-name" class="col-form-label">Tên nhà cung cấp*: </label>
              <div class="controls">
                <select name="provider_name_id_edit" id="provider_name_id_edit">
                  @foreach($providerName as $key => $prod)
                    <option value="{{$key}}">{{$prod}}</option>
                  @endforeach
                </select>
              </div>
            </div>
           
            <div class="control-group">
                <label class="control-label">Trạng thái :</label>
                <div class="controls" style="margin-left: 65px;">
                    <input type="radio" name="status_card_edit" class="status_card_edit" id="status_card_edit_1" value= "1" checked style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Hoạt động</span> <br/>
                    <input type="radio" name="status_card_edit" class="status_card_edit"  id="status_card_edit_0" value="0" style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Không hoạt động</span>
                </div>
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
          <button type="submit" class="btn btn-primary">Cập nhật</button>
        </div>
      </form>
    </div>
  </div>
</div>
<!-- create card -->
<div class="modal fade" id="createCard" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLL" aria-hidden="true" style="display: none">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabelLL">Thêm nhà cung cấp mới</h5>
      </div>
      <form method="POST" action="{{route('management-gift-online.card.create')}}"  enctype="multipart/form-data">
      @csrf
        <div class="modal-body">
            <div class="form-group">
              <label for="recipient-name" class="col-form-label">Mã nạp*: </label>
                <input type="text" class="form-control" required name="code_number_add" style="width: 97%" id="code_number_add" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="recipient-name" class="col-form-label">Số seri*: </label>
                <input type="text" class="form-control" required name="seri_number_add" style="width: 97%" id="seri_number_add" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="recipient-name" class="col-form-label">Mệnh giá*: </label>
                <input type="text" class="form-control" required name="price_number_add" style="width: 97%" id="price_number_add" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="recipient-name" class="col-form-label">Tên nhà cung cấp*: </label>
              <div class="controls">
                <select name="provider_name_id_add" id="provider_name_id_add">
                  @foreach($providerName as $key => $prod)
                    <option value="{{$key}}">{{$prod}}</option>
                  @endforeach
                </select>
              </div>
            </div>
           
            <div class="control-group">
                <label class="control-label">Trạng thái :</label>
                <div class="controls" style="margin-left: 65px;">
                    <input type="radio" name="status_card_add" class="status_card_add" id="status_card_add_1" value= "1" checked style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Hoạt động</span> <br/>
                    <input type="radio" name="status_card_add" class="status_card_add" checked id="status_card_add_0" value="0" style="margin-top: 0px !important;"/> <span style="font-size: 14px !important;">Không hoạt động</span>
                </div>
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
          <button type="submit" class="btn btn-primary">Cập nhật</button>
        </div>
      </form>
    </div>
  </div>
</div>
@endsection
@section('scripts')
<script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
<script type= "text/javascript">
    $(document).ready(function(){
        $('.delete-provider').click(function() {
            var id = $(this).attr('id');
            $('#delete_gift').click();
            $('#provider_id').val(id);
        });
        $('.delete-card').click(function() {
            var id = $(this).attr('id');
            $('#delete_card').click();
            $('#card_id').val(id);
        });

        //edit provider
        $('.edit-provider').click(function(event) {
            event.preventDefault();
            jQuery.noConflict();
            $('#provider_id_edit').val('');
            $('#provider_name_edit').val('');
            $(".provider_type_edit").prop("checked", false);
            $(".status_edit").prop("checked", false);
            $('#editProvider').modal();
            var id = $(this).attr('id');
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: "POST",
                url: "{{route('management-gift-online.provider.edit')}}",
                data: {'provider_id': id},
                cache: false,
                success: function(data){
                    if(data.status_respone == true){
                        $('#provider_id_edit').val(id);
                        $('#provider_name_edit').val(data.provider_name);
                        $("#provider_type_edit_"+data.provider_type).prop("checked", true);
                        $("#status_edit_"+data.status).prop("checked", true);
                    }
                }
            });
        });

        //edit card
        $('.edit-card').click(function(event) {
            event.preventDefault();
            jQuery.noConflict();
            $('#provider_id_edit').val('');
            $('#provider_name_edit').val('');
            $(".provider_type_edit").prop("checked", false);
            $(".status_edit").prop("checked", false);
            $('#editCard').modal();
            var id = $(this).attr('id');
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: "POST",
                url: "{{route('management-gift-online.card.edit')}}",
                data: {'card_id': id},
                cache: false,
                success: function(data){
                    if(data.status_respone == true){
                        $('#edit_card_id').val(id);
                        $('#code_number_edit').val(data.code_number);
                        $('#seri_number_edit').val(data.seri_number);
                        $('#price_number_edit').val(data.price);
                        $('#provider_name_id_edit').val(data.provider_id);
                        $("#status_card_edit_"+data.status).prop("checked", true);
                    }
                }
            });
        });
    });
</script>
<script>
</script>
@stop

