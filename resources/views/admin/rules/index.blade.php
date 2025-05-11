@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Quản lý thể lệ</a></div>
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
                            <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                                Thêm Quý mới
                            </button> -->
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="container-fluid">
                            <hr>
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                        <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                            <h5>Quản lý thể lệ</h5>
                                        </div>
                                        <div class="widget-content"> 
                                            <form action="{{route('management-rules')}}" method="POST" >
                                            @csrf
                                                <input type="hidden" id="banner" name="config" value="rules"/>
                                                <div class="row-fluid">
                                                    <div class="widget-content notify-ui">
                                                        <textarea name="rules_test">@if($rulesTest) {{$rulesTest->config}} @endif</textarea>
                                                    </div>
                                                    <div class="form-actions">
                                                        <button type="submit" class="btn btn-success">Lưu lại</button>
                                                    </div>
                                                </div>
                                                
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
        
        
    });
</script>
<script>
    CKEDITOR.replace( 'rules_test' );
</script>
@stop

