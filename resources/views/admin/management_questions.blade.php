@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Quản lý Quý</a></div>
  </div>
<!--End-breadcrumbs-->
    <div class="page-wrapper">
        <div class="container-fluid">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">
                            <button type="button" class="btn btn-primary">
                                <a style="color: white" href="{{route('management-group-question')}}">Thêm bộ câu hỏi mới</a>
                            </button>
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="container-fluid">
                            <hr>
                            @foreach($quartersList as $yearT => $quarters)
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-box">
                                    <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                        <h5>Năm <code>{{$yearT}}</code></h5>
                                    </div>
                                    <div class="widget-content"> 
                                        <div class="row-fluid">
                                            @foreach($quarters as $detail)
                                            <div class="span3">
                                                <div class="widget-box" style="margin-top: 0px">
                                                    <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
                                                        <h5>Quý <code>{{$detail['month']}}</code></h5>
                                                    </div>
                                                    <div class="widget-content">
                                                        @if(!empty($detail['questions']))
                                                        <div class="widget-box">
                                                            @foreach($detail['questions'] as $question)
                                                            <div class="widget-title"> <span class="icon"> <a href="{{route('get-group-questions', ['id_training' => $detail['id'], 'id_group' => $question['question_group']])}}"><i class="icon-edit edit-quarter"></i></a> </span>
                                                                <?php $checkStatusGroup = get_status_question_group($question['question_group'], $detail['id'])?>
                                                                <h5 class=" @if($checkStatusGroup) active-group @endif">Bộ câu hỏi {{$question['question_group']}} ({{count_question($detail['id'], $question['question_group'])}} câu)</h5>
                                                            </div>
                                                            @endforeach
                                                        </div>
                                                        @else
                                                            Chưa có bộ câu hỏi nào.
                                                        @endif
                                                    </div>
                                                    <div class="widget-title" style="text-align: center">
                                                      <h5 style="float: none;"> @if($detail['status'] == 1)<code>Trạng thái: Hoạt động</code> @else <code>Trạng thái: Không Hoạt động</code> @endif</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
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
        $("#uploadFile").on("change", function()
        {
            var files = !!this.files ? this.files : [];
            if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
    
            if (/^image/.test( files[0].type)){ // only image file
                var reader = new FileReader(); // instance of the FileReader
                reader.readAsDataURL(files[0]); // read the local file
                $("#imagePreview").css({"width": "100%", "height": "300px"});
                reader.onloadend = function(){ // set image data as background of div
                    $("#imagePreview").css("background-image", "url("+this.result+")");
                }
            }
        });
    });
</script>

@stop

