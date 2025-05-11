@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Quản lý câu hỏi / thêm bộ câu hỏi mới</a></div>
  </div>
<!--End-breadcrumbs-->
    <div class="container-fluid">
        <hr>
        <input type="hidden" value="1" id="count_div"/>
        <form action="{{route('management-group-save')}}" method="post" class="form-horizontal">
         @csrf
        <div class="row-fluid">
           
            <div class="span12" id="add_question">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>Chọn quý</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <div class="control-group">
                            <label class="control-label">Chọn Quý</label>
                            <div class="controls">
                                <select name="id_training" required>
                                    @foreach($quartersList as $quarter)
                                    <option value="{{$quarter->id}}">Quý {{$quarter->month}}/{{$quarter->year}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="widget-box count-question">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>Câu 1</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <div class="control-group">
                            <label class="control-label">Câu hỏi :</label>
                            <div class="controls">
                            <input type="text" class="span11" name="questions[1]"required value="" placeholder="Vui lòng nhập câu hỏi" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Đáp án :</label>
                            <div class="controls">
                                <input type="text" required style="margin-bottom: 5px" name="answer[1][]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: A. đáp án" />
                                <input type="text"  style="margin-bottom: 5px" name="answer[1][]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: B. đáp án" />
                                <input type="text"  style="margin-bottom: 5px" name="answer[1][]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: C. đáp án" />
                                <input type="text"  style="margin-bottom: 5px" name="answer[1][]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: D. đáp án" />
                                <input type="text"  style="margin-bottom: 5px" name="answer[1][]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: E. đáp án" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Đáp án đúng</label>
                            <div class="controls">
                            <input type="text"  required class="span11" name="correct[1]" value="" placeholder="Vui lòng nhập đáp án đúng: ví dụ: A"  />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-actions">
                <button type="submit" class="btn btn-success">Save</button>
                <button type="submit" class="btn btn-success"><a href="{{route('management-questions')}}" style="color: white" href="">Quay lại</a></button>
            </div>
            </from>
            <button id="btn1" type="button" class="btn btn-primary" style="margin-top:20px">Thêm tiếp câu hỏi</button>
        </div>
    </div>
</div>
<!-- Modal -->
@endsection
@section('scripts')
<script type= "text/javascript">
    $(document).ready(function(){        
        $('#btn1').click(function(){
            $countTemp = $('#count_div').val();
            var numItems = $('.count-question').length
            numItems = parseInt(numItems) + 1;
            $('#add_question').append(GetDynamicTextBox(numItems));
        });
        $("body").on("click", ".btn-delete-div", function () {
            $(this).closest(".count-question").remove();
        });
        function GetDynamicTextBox(value) {
            return '<div class="widget-box count-question" id="">' + 
            '<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>' + 
            '<h5>Câu '+value+'</h5>' +
            // '<button type="button" class="btn btn-danger btn-delete-div">Xóa</button>' +
            '</div>' +
            '<div class="widget-content nopadding">' +
            '<div class="control-group">' +
            '<label class="control-label">Câu hỏi :</label>' +
            '<div class="controls">' +
            '<input type="text" class="span11" name="questions['+value+']"required value="" placeholder="Vui lòng nhập câu hỏi" />' +
            '</div>' +
            '</div>' +
            '<div class="control-group">' +
            '<label class="control-label">Đáp án :</label>' +
            '<div class="controls">' +
            '<input type="text" required style="margin-bottom: 5px" name="answer['+value+'][]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: A. đáp án" />' + 
            '<input type="text"  style="margin-bottom: 5px" name="answer['+value+'][]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: B. đáp án" />' +
            '<input type="text"  style="margin-bottom: 5px" name="answer['+value+'][]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: C. đáp án" />' +
            '<input type="text"  style="margin-bottom: 5px" name="answer['+value+'][]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: D. đáp án" />' +
            '<input type="text"  style="margin-bottom: 5px" name="answer['+value+'][]" class="span11" value="" placeholder="Vui lòng nhập đáp án theo format: E. đáp án" />' +
            '</div>' +
            '</div>' +
            '<div class="control-group">' +
            '<label class="control-label">Đáp án đúng</label>' +
            '<div class="controls">' +
            '<input type="text"  required class="span11" name="correct['+value+']" value="" placeholder="Vui lòng nhập đáp án đúng: ví dụ: A"  />' +
            '</div>' +
            '</div>' +
            '</div>' +
            '</div>'
        }
    });
</script>

@stop

