@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Quản lý câu hỏi / quản lý bộ câu hỏi/ chỉnh sửa</a></div>
  </div>
<!--End-breadcrumbs-->
    <div class="container-fluid">
        <hr>
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                    <h5></h5>
                </div>
                <div class="widget-content nopadding">
                    <form action="{{route('question-update')}}" method="post" class="form-horizontal">
                    @csrf
                    <input type="hidden" class="span11" name="question_id" required value="{{$question['id']}}"/>
                    <div class="control-group">
                        <label class="control-label">Câu hỏi :</label>
                        <div class="controls">
                        <input type="text" class="span11" name="questions"required value="{{$question['questions']}}" placeholder="Vui lòng nhập câu hỏi" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Đáp án :</label>
                        <div class="controls" id="div_answer">
                            @foreach($question['answer'] as $answer)
                            <input type="text"  style="margin-bottom: 5px" name="answer[]" class="span11" value="{{$answer}}" placeholder="Vui lòng nhập đáp án theo format: A. đáp án" />
                            @endforeach
                        </div>
                        <button id="btn1" type="button" class="btn btn-primary" style="margin-left:20px">Thêm tiếp đáp án</button>

                    </div>
                    <div class="control-group">
                        <label class="control-label">Đáp án đúng</label>
                        <div class="controls">
                        <input type="text"  required class="span11" name="correct" value="{{$question['correct']}}" placeholder="Enter Password"  />
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-success">Save</button>
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
        $('#btn1').click(function(){
            $('#div_answer').append(GetDynamicTextBox());
        });
        function GetDynamicTextBox() {
            return '<input type="text"  style="margin-bottom: 5px" name="answer[]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: A. đáp án" />'
        }
    });
</script>

@stop

