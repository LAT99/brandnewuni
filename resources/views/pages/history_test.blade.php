@extends('layouts.master')

@section('content')

<div style="text-align: center" class="mt-3 mb-3">
    <div class="main-mini-footer-top font30">
        <span>CHI TIẾT BÀI KIỂM TRA QUÝ {{$month}}/{{$year}} ĐÃ KIỂM TRA</span>
    </div>
</div>
<div class="text-white rounded bg-content div-main-account" style="text-align: -webkit-center;margin-bottom: 2rem !important">
   <input type="hidden" value="{{count($questionsList)}}" id="total_question"/>
   <input type="hidden" value="1" class="question-curent"/>
   <form action="{{route('submit-test')}}" method="POST">
       @csrf
        <input type="hidden" value="{{$group}}" name="group"/>
    @foreach($questionsList as $no => $detailQuestion)
    <?php $number = $no + 1?>
    <div class="list-question-{{$number}} hidden-question question-main">
        <div class="div-main-account-hader ini-bg-main-mcolor color-white" style="text-align: center">
            <div class="display-5 font-weight-bold font35">Câu {{$number}}</div>
            <div class="font24" style="font-weight: normal">
                <p>{{$detailQuestion['question']}}</p>
            </div>
        </div>
        <div class="container padding-question">
            <div class="detail-question" style="text-align: left;">
                @foreach($detailQuestion['answers'] as $key => $detailAnswer)
                <div class="wrapper">
                    <input class="state" disabled type="radio" name="question{{$detailQuestion['no_question']}}{{$key}}" id="id_{{$number}}_{{$key}}" @if($detailQuestion["user_answer"] == substr($detailAnswer, 0, 1)) checked @endif value="{{substr($detailAnswer, 0, 1)}}">
                    <label class="label" for="id_{{$number}}_{{$key}}" style="width: 95%;">
                        <div class="indicator @if($detailQuestion["user_answer"] == substr($detailAnswer, 0, 1) && $detailQuestion["correct"] != substr($detailAnswer, 0, 1)) change-color-red @endif"></div>
                        <span class="text color-black"   style="width: 95%;">{{$detailAnswer}}</span>
                    </label>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    @endforeach
    <div class="row pl-4 pr-4 pb-3">
        <div class="col-lg-6" style="text-align: right">
            @foreach($questionsList as $no => $detailQuestion)
            <?php $number = $no + 1?>
            <div style="float: left" class="format-div-time-main hidden-question show-button-main show-button-result-{{$number}}">
                    @if($detailQuestion['correct'] == $detailQuestion['user_answer'])
                    <div class="format-div-next  main-mini-footer">
                        <div class="" style="cursor: default"><span>ĐÁP ÁN CHÍNH XÁC</span></div>
                    </div>
                    @else
                    <div class="format-div-next format-div-false  main-mini-footer">
                        <div class="" style="cursor: default"><span>ĐÁP ÁN SAI</span></div>
                    </div>
                    @endif
            </div>
            @endforeach
        </div>
        <div class="col-lg-6" style="text-align: right">
            <div style="float: right" class="format-div-time-main">
                <div class="format-div-next  main-mini-footer">
                    <div class="next-question" style="cursor: default"><span>CÂU TIẾP THEO</span></div>
                    <button class="send-result hidden-question" style="cursor: default; background: none; border: none; color: #ffff"><span>NỘP BÀI</span></button>
                </div>
            </div>
        </div>
    </div>
    </form>
</div>
<script type= "text/javascript">
$(document).ready(function(){
    var totalQuestion = $('#total_question').val();
    if(totalQuestion > 0){
        $('.list-question-1').removeClass('hidden-question');
        $('.show-button-result-1').removeClass('hidden-question');
    }
    $('.next-question').click(function(){
        var currentQuestion = parseInt($('.question-curent').val());
        nextQuestion = currentQuestion + 1;
        if(nextQuestion < parseInt(totalQuestion)){
            $('.question-curent').val(nextQuestion);
            $('.show-current-question').html(nextQuestion);
            $('.question-main').addClass('hidden-question');
            $('.show-button-main').addClass('hidden-question');
            $('.list-question-'+nextQuestion).removeClass('hidden-question');
            $('.show-button-result-'+nextQuestion).removeClass('hidden-question');
        }else{
            $('.show-current-question').html(nextQuestion);
            $('.question-main').addClass('hidden-question');
            $('.list-question-'+nextQuestion).removeClass('hidden-question');
            $('.show-button-main').addClass('hidden-question');
            $('.show-button-result-'+nextQuestion).removeClass('hidden-question');
            // $('.next-question').addClass('hidden-question');
            // $('.send-result').removeClass('hidden-question');
        }
    });


});

</script>
@endsection
