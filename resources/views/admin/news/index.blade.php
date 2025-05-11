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
                        <h5 class="card-title">
                            <button type="button" class="btn btn-primary">
                                <a style="color: white" href="{{route('create-news')}}">Thêm tin tức mới</a>
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
                                        <th>Chủ đề</th>
                                        <th  style="width: 40%">Hình đại diện</th>
                                        <th>Nội dung ngắn gọn</th>
                                        <th>Ngày tạo</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($news as $key => $new)
                                    <tr>
                                        <td  style="text-align: center;">{{$key+1}}</td>
                                        <td  style="text-align: center;">{{$new->title}}</td>
                                        <td  style="text-align: center;" style="width: 40%">
                                            <img style="max-height: 300px; width: 100%; object-fit: contain" src="{{asset('images/news/')}}/{{$new->image}}" alt="">
                                        </td>
                                        <td  style="text-align: center;">{{$new->content_short}}</td>
                                        <td  style="text-align: center;">{{date('Y-m-d H:i', strtotime($new->created_at))}}</td>
                                        <td>
                                            <ul>
                                                <li><a class="delete-new" id="{{$new->id}}" style="color: red">Xóa</a></li>
                                                <li><a class="delete-question" href="{{route('edit-news', ['id' => $new->id])}}" style="color: blue">Chỉnh sửa</a></li>
                                            </ul>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>stt</th>
                                        <th>Chủ đề</th>
                                        <th>Hình đại diện</th>
                                        <th>Nội dung ngắn gọn</th>
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
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editModal33" id="delete_staff" style="display: none">
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
    <form action="{{route('delete-news')}}" method="POST">
    @csrf
      <input type="hidden" name="new_id" id="video_id"/>
        <button class="btn btn-primary" type="submit" href="#">Xác nhận</button> 
    </form>
  </div>
</div>


@endsection
@section('scripts')
<script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
<script type= "text/javascript">
    $(document).ready(function(){
        $('.delete-new').click(function() {
            var id = $(this).attr('id');
            $('#video_id').val('');
            $('#delete_staff').click();
            $('#video_id').val(id);
        });
    });
</script>
<script>
    CKEDITOR.replace( 'news' );
</script>
@stop

