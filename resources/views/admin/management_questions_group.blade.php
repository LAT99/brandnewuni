@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Quản lý câu hỏi / quản lý bộ câu hỏi</a></div>
  </div>
<!--End-breadcrumbs-->

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
                    <a href="{{route('create-question', ['id_training' => $id_training, 'group' => $id_group])}}" class="btn btn-primary">
                        Thêm câu hỏi
                    </a>
                </h5>
                <form action="{{route('change_status_group')}}" method="POST">
                  @csrf()
                  <input name="id_training_check" value="{{$id_training}}" type="hidden"/>
                  <input name="id_group_check" value="{{$id_group}}" type="hidden"/>
                  <h5 class="card-title">
                      <button type="submit" class="btn btn-success">
                          Chuyển trạng thái
                      </button>
                  </h5>
              </form>
            </div>
        </div>
    </div>
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"><span class="icon"> <i class="icon-ok-sign"></i> </span>
            <h5>Quản lý Bộ câu hỏi Quý</h5>
          </div>
          <div class="widget-content">
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>Số</th>
                  <th style="width: 45%">Câu hỏi</th>
                  <th>Đáp án</th>
                  <th>Đáp án đúng</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                @foreach($questions as $key => $question)
                <tr>
                  <td><span class="label">{{$key+1}}</span></td>
                  <td>{{$question['questions']}}</td>
                  <td>
                      @if(!empty($question['answer']))
                      @foreach($question['answer'] as $answer)
                        <li>{{$answer}}</li>
                      @endforeach
                      @endif
                 </td>
                  <td><span class="label label-success">{{$question['correct']}}</span></td>
                  <td>
                    <div class="btn-group">
                        <button class="btn btn-info">Hành động</button>
                        <button data-toggle="dropdown" class="btn btn-info dropdown-toggle"><span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li><a class="delete-question" id="delete_{{$question['id']}}">Xóa</a></li>
                            <li><a class="edit-question" href="{{route('question-edit', ['id_question' => $question['id']])}}">Edit</a></li>
                        </ul>
                    </div>
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editModal33" id="delete_staff" style="display: none">
  delete
</button>
<div class="modal fade" id="editModal33" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button data-dismiss="modal" class="close" type="button">×</button>
    <h3>Thông báo</h3>
  </div>
  <div class="modal-body">
    <p>Bạn có chắc chắn xóa câu hỏi này?</p>
  </div>
  <div class="modal-footer"> 
    <form action="{{route('question-delete')}}" method="POST">
    @csrf
      <input type="hidden" name="question_id" id="ques_id"/>
        <button class="btn btn-primary" type="submit" href="#">Xác nhận</button> 
    </form>
  </div>
</div>
@endsection
@section('scripts')
<script type= "text/javascript">
    $(document).ready(function(){        
      $('.delete-question').click(function(){
        $('#ques_id').val('');
          var temp = $(this).attr('id');
          var id = temp.replace('delete_','');
          $('#ques_id').val(id);
          $('#delete_staff').click();

      });
      });
</script>

@stop

