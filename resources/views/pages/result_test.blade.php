@extends('layouts.master')

@section('content')

<div style="text-align: center" class="mt-3 mb-3">
    <div class="main-mini-footer-top font30">
        <span>BÀI KIỂM TRA QUÝ {{$month}}/{{$year}}</span>
    </div>
</div>
<div class="text-white rounded bg-content div-main-account div-result-test" style="text-align: -webkit-center;">
    <div class="container p-3 p-md-5 " >
        <div class="col-lg-12 project-item" >
            <div class=" text-white rounded ini-bg-main-mcolor"> 
                <div class="display-4 pt-4">Chúc Mừng Bạn Đã Đạt Được:</div>
                <div class="display-4 font-weight-bold color-yellow mt-4 mb-4"><span>{{$score}} </span>điểm</div>
                <div class="display-4 pb-4">
                    @if($score < 10)
                        Thử lại lần nữa bạn nhé!
                    @elseif($score >=10 && $score < 18)
                        Bạn đã hoàn thành, cố thêm chút để nhận chứng nhận!
                    @else
                        Bạn thật xuất sắc!
                    @endif
                </div>
            </div>
            <div class="row result-main">
                <div class="col-lg-4">
                    <div style="text-align: center; margin-top: 30px;" class="">
                        <div class="main-mini-footer-test main-mini-footer" style="width: 80%">
                            <div class="" style=""><a href="{{route('question', ['id_training' => $idTraining, 'group' => $group])}}" style="color: white">LÀM LẠI</a></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div style="text-align: center; margin-top: 30px;" class="">
                        <div class="main-mini-footer-test main-mini-footer" style="width: 80%">
                            <div class="" style=""><a href="{{route('correct-answer', ['id_training' => $idTraining, 'group' => $group, 'id_history' => $historyInfo])}}" style="color: white">XEM KẾT QUẢ</a></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div style="text-align: center; margin-top: 30px;" class="">
                        <div class="main-mini-footer-test main-mini-footer" style="width: 80%">
                            <div class="" style=""><a href="{{route('main-page')}}" class="color-white">THOÁT</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
