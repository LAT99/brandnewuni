@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Quản lý câu hỏi / quản lý bộ câu hỏi/ thêm mới</a></div>
  </div>
<!--End-breadcrumbs-->
    <div class="container-fluid">
        <hr>
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                    <h5>Thêm câu hỏi vào bộ {{$group}} của Quý {{$training->month}}/{{$training->year}} </h5>
                </div>
                <div class="widget-content nopadding">
                    <form action="{{route('question-save')}}" method="post" class="form-horizontal">
                    @csrf
                    <input type="hidden" class="span11" name="id_training" required value="{{$id_training}}"/>
                    <input type="hidden" class="span11" name="group" required value="{{$group}}"/>
                    <div class="control-group">
                        <label class="control-label">Câu hỏi :</label>
                        <div class="controls">
                        <input type="text" class="span11" name="questions"required value="" placeholder="Vui lòng nhập câu hỏi" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Đáp án :</label>
                        <div class="controls">
                            <input type="text" required style="margin-bottom: 5px" name="answer[]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: A. đáp án" />
                            <input type="text"  style="margin-bottom: 5px" name="answer[]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: B. đáp án" />
                            <input type="text"  style="margin-bottom: 5px" name="answer[]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: C. đáp án" />
                            <input type="text"  style="margin-bottom: 5px" name="answer[]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: D. đáp án" />
                            <input type="text" class="span11" value="" name="answer[]" placeholder="Vui lòng nhập đáp án theo format: E. đáp án" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Đáp án đúng</label>
                        <div class="controls">
                        <input type="text"  required class="span11" name="correct" value="" placeholder="Vui lòng nhập đáp án đúng: ví dụ: A"  />
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-success">Save</button>
                        <button type="submit" class="btn btn-success"><a style="color: white" href="{{route('get-group-questions', ['id_training' => $id_training, 'id_group' => $group])}}">Quay lại</a></button>
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

