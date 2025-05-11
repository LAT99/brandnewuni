@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Quản lý nhân viên / Lịch sử điểm nhân viên</a></div>
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
                            <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#createStaff">
                                Thêm nhân viên mới
                            </button>
                        </h5> -->
                        </h5>
                        @if(count($checkList) > 0)
                        <div class="table-responsive">
                            <table id="zero_config" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Chủ đề</th>
                                        <th>Điểm số</th>
                                        <th>Ngày thực hiện</th>
                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($checkList as $no => $checks)
                                    <tr>
                                        <td scope="row">{{$no+1}}</td>
                                        @if($checks->type == 0)
                                        <td> Đã thực hiện "Bài kiểm tra Quý {{$checks->trainingManagement->month}}/{{$checks->trainingManagement->year}}"</td>
                                        @else
                                        <td> Đã xem video "Bài kiểm tra Quý {{$checks->trainingManagement->month}}/{{$checks->trainingManagement->year}}"</td>
                                        @endif
                                        <td>{{$checks->score}}</td>
                                        <td>{{date('d-m-Y H:i', strtotime($checks->created_at))}}</td>
                                    </tr>
                                @endforeach
                                <tfoot>
                                    <tr>
                                            <th>STT</th>
                                            <th>Chủ đề</th>
                                            <th>Điểm số</th>
                                            <th>Ngày thực hiện</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        @else
                        <div class="table-responsive">
                            <table id="zero_config" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th rowspan = "5">Chưa có thông tin</th>
                                    </tr>
                                </thead>    
                            </table>
                        </div>
                        @endif
                        <h5 class="card-title">
                            <button type="" class="btn btn-primary">
                                <a style="color: white"  href="{{route('management-staff')}}">Trở về</a>
                            </button>
                        </h5>
                    </div>
                </div>
            </div>
        </div>    
    <div>
</div>
<!-- Modal -->
@endsection
@section('scripts')

<script type= "text/javascript">
    $(document).ready(function(){        
      });
</script>

@stop