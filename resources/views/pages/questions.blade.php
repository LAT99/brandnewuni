@extends('layouts.master')

@section('content')

<div style="text-align: center" class="mt-3 mb-3">
    <div class="main-mini-footer-top font30">
        <span>BÀI KIỂM TRA QUÝ {{$month}}/{{$year}}</span>
    </div>
</div>
<div class="text-white rounded bg-content div-main-account" style="text-align: -webkit-center;margin-bottom: 2rem !important">
   <input type="hidden" value="{{count($questionsList)}}" id="total_question"/>
   <input type="hidden" value="1" class="question-curent"/>
   <form action="{{route('submit-test')}}" method="POST">
       @csrf
       <input type="hidden" value="{{$idTraining}}" name="id_training"/>
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
                    <input class="state" type="radio" name="question[{{$detailQuestion['no_question']}}]" id="id_{{$number}}_{{$key}}" value="{{substr($detailAnswer, 0, 1)}}">
                    <label class="label" for="id_{{$number}}_{{$key}}" style="width: 95%;">
                        <div class="indicator"></div>
                        <span class="text color-black font-test" style="width: 95%;">{{$detailAnswer}}</span>
                    </label>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    @endforeach
    <div class="row pl-4 pr-4 pb-3">
        <div class="col-lg-6 color-black" style="text-align: left">
            <p class="mb-1">Câu hỏi: <span class="font-weight-bold"><span class="show-current-question">1</span>/{{count($questionsList)}}</span></p>
            <p>Điểm yêu cầu: <span class="font-weight-bold">18/{{count($questionsList)}}</span></p>
        </div>
        <div class="col-lg-6" style="text-align: right">
            <div style="float: right" class="format-div-time-main">
                <div class="format-div-time">
                    <div>
                        <span id="show-time">20:00</span>
                    </div>
                </div>
                <div class="format-div-next  main-mini-footer">
                    <div class="next-question" style="cursor: default"><span>CÂU TIẾP THEO</span></div>
                    <button type="submit"class="send-result hidden-question" style="cursor: default; background: none; border: none; color: #ffff"><span>NỘP BÀI</span></button>
                </div>
            </div>
        </div>
    </div>
    </form>
</div>
<script type= "text/javascript">
$(document).ready(function(){
    var totalQuestion = $('#total_question').val();
    var timer2 = $('#show-time').text();
    var interval = setInterval(function() {
    var timer = timer2.split(':');
    //by parsing integer, I avoid all extra string processing
    var minutes = parseInt(timer[0], 10);
    var seconds = parseInt(timer[1], 10);
    --seconds;
    minutes = (seconds < 0) ? --minutes : minutes;
    seconds = (seconds < 0) ? 59 : seconds;
    seconds = (seconds < 10) ? '0' + seconds : seconds;
    //minutes = (minutes < 10) ?  minutes : minutes;
    $('#show-time').html(minutes + ':' + seconds);
    if (minutes < 0) clearInterval(interval);
    //check if both minutes and seconds are 0
    if ((seconds <= 0) && (minutes <= 0)) {
        $('.next-question').addClass('hidden-question');
        $('.send-result').removeClass('hidden-question');
        clearInterval(interval);
    }
    timer2 = minutes + ':' + seconds;
    }, 1000);

    if(totalQuestion > 0){
        $('.list-question-1').removeClass('hidden-question');
    }
    $('.next-question').click(function(){
        var currentQuestion = parseInt($('.question-curent').val());
        nextQuestion = currentQuestion + 1;
        if(nextQuestion < parseInt(totalQuestion)){
            $('.question-curent').val(nextQuestion);
            $('.show-current-question').html(nextQuestion);
            $('.question-main').addClass('hidden-question');
            $('.list-question-'+nextQuestion).removeClass('hidden-question');
        }else{
            $('.show-current-question').html(nextQuestion);
            $('.question-main').addClass('hidden-question');
            $('.list-question-'+nextQuestion).removeClass('hidden-question');
            $('.next-question').addClass('hidden-question');
            $('.send-result').removeClass('hidden-question');
        }
    });


});

</script>
@endsection
