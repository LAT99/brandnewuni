@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Quản lý quà tặng</a></div>
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
                       
                    </div>
                    <div class="card-body">
                        <div class="container-fluid">
                            <h4 class="card-title">Quản lý danh sách mã nạp / quà tặng được quy đổi ngày từ ngày {{$fromDate}} đến ngày {{$toDate}}</h4>
                            <hr>
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                        <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                            <div>
                                                <h5>Tìm kiếm</h5>
                                            </div>
                                        </div>
                                        <div class="widget-content"> 
                                            <form class="form-horizontal" action="{{route('management-gift')}}">
                                                <div class="control-group">
                                                    <label class="control-label">Từ ngày</label>
                                                    <div class="controls">
                                                        <input type="text" data-date="01-02-2013" maxlength="10" required name="from_date" data-date-format="yyyy-mm-dd" value="{{$fromDate}}" class="datepicker span11">
                                                        <span class="help-block">(Năm-tháng-ngày)</span>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">Tới ngày</label>
                                                    <div class="controls">
                                                        <input type="text" data-date="01-02-2013" maxlength="10" required name="to_date" data-date-format="yyyy-mm-dd" value="{{$toDate}}" class="datepicker span11">
                                                        <span class="help-block">(Năm-tháng-ngày)</span>
                                                    </div>
                                                </div>
                                                <div class="form-actions">
                                                    <button type="submit" class="btn btn-success">Lọc</button>
                                                    <button type="submit" class="btn btn-success"><a style="color: white" href="{{route('management-gift')}}">Mặc định</a></button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                        <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                            <div>
                                                <h5>Danh sách các mã nạp</h5>
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
                                                            <th>Họ và tên</th>
                                                            <th>Email</th>
                                                            <th>Số điện thoại</th>
                                                            <th>Thời gian quy đổi</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @if(!empty($listGiftOnlinehistoryToday))
                                                            @foreach($listGiftOnlinehistoryToday as $key => $cardOnline)
                                                            <tr>
                                                                <td>{{ $key+1 }}</td>
                                                                <td>
                                                                  @if(auth()->user()->can('management'))
                                                                    {{ $cardOnline['card']['code_number'] }}
                                                                  @else
                                                                    ************
                                                                  @endif
                                                                </td>
                                                                <td>{{ $cardOnline['card']['seri_number'] }}</td>
                                                                <td>{{ $cardOnline['card']['price'] }}</td>
                                                                <td>{{ $providerName[$cardOnline['card']['provider_id']] }}</td>
                                                                <td>{{ $cardOnline['address']['name'] }}</td>
                                                                <td>{{ $cardOnline['address']['email'] }}</td>
                                                                <td>{{ $cardOnline['address']['phone'] }}</td>
                                                                <td>{{ \Carbon\Carbon::parse($cardOnline['created_at'])->format('Y-m-d h:i:s') }}</td>
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
                                                            <th>Họ và tên</th>
                                                            <th>Email</th>
                                                            <th>Số điện thoại</th>
                                                            <th>Thời gian quy đổi</th>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                        <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                            <div>
                                                <h5>Danh sách các quà tặng</h5>
                                            </div>
                                        </div>
                                        <div class="widget-content"> 
                                            <div class="table-responsive">
                                                <table id="zero_config" class="table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>stt</th>
                                                            <th>Tên quà tặng</th>
                                                            <th>Số lượng</th>
                                                            <th>Họ và tên người nhận</th>
                                                            <th>Email</th>
                                                            <th>Số điện thoại</th>
                                                            <th>Thời gian quy đổi</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @if(!empty($listGiftPhysicalhistoryToday))
                                                            @foreach($listGiftPhysicalhistoryToday as $key => $cardPhysical)
                                                            <tr>
                                                                <td>{{ $key+1 }}</td>
                                                                <td>
                                                                    {{ $cardPhysical['gift']['gift_name'] }}
                                                                </td>
                                                                <td>{{ $cardPhysical['qty_gift'] }}</td>
                                                                <td>{{ $cardPhysical['address']['name'] }}</td>
                                                                <td>{{ $cardPhysical['address']['email'] }}</td>
                                                                <td>{{ $cardPhysical['address']['phone'] }}</td>
                                                                <td>{{ \Carbon\Carbon::parse($cardPhysical['created_at'])->format('Y-m-d h:i:s') }}</td>
                                                            </tr>
                                                            @endforeach
                                                        @endif
                                                    </tbody>
                                                    <tfoot>
                                                        <tr>
                                                            <th>stt</th>
                                                            <th>Tên quà tặng</th>
                                                            <th>Số lượng</th>
                                                            <th>Họ và tên người nhận</th>
                                                            <th>Email</th>
                                                            <th>Số điện thoại</th>
                                                            <th>Thời gian quy đổi</th>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                        <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                            <div>
                                                <h5>Thiết lập địa chỉ gửi Report Admin</h5>
                                            </div>
                                        </div>
                                        <div class="widget-content"> 
                                            <form class="form-horizontal" method="POST" action="{{route('management-gift.common')}}">
                                                @csrf
                                                <div class="control-group">
                                                    <label class="control-label">Địa chỉ gửi mail</label>
                                                    <div class="controls">
                                                        <input type="text" required name="email_cron"  value="{{$emailConfig ? $emailConfig->config : ''}}" class=" span11">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">Thời gian gửi mail</label>
                                                    <div class="controls">
                                                        <input type="text" required name="time_cron" maxlength=5 value="{{$timeConfig ? $timeConfig->config : ''}}"  placeholder="Hãy nhập theo định dạng: 18:00 " value="" class=" span11">
                                                    </div>
                                                </div>
                                                <div class="form-actions">
                                                    <button type="submit" class="btn btn-success">Lưu</button>
                                                </div>
                                            </form>
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


<!-- create card -->

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

