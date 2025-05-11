@extends('layouts.master')

@section('content')

<div class="jumbotron text-white rounded bg-content div-main-account certificate-background" style="text-align: -webkit-center;margin-bottom: 3rem !important;margin-top: 3rem !important">
    <div class="container container-certificate" style="margin-bottom: 157px">
        <div>
            <image src="{{asset('images/dell-logo-970ADE9CAE-seeklogo.com.png')}}" height="95"/>
        </div>
        <div style="margin-top: 20px">
            <h2 class="title-certificate">CHỨNG NHẬN</h2>
        </div>
        <div style="margin-top: 20px">
            <h4 class="title-2-certificate">Công ty Dell Việt Nam xin trân trọng chúc mừng</h4>
        </div>
        <div style="margin-top: 50px">
            <h4 class="title-2-certificate title-4-certificate">Anh/Chị: <span class="title-6-certificate">{{Auth::user()->name}}</span></h4>
        </div>
        <div style="margin-top: 20px">
            <h4 class="title-2-certificate">đã xuất sắc hoàn thành chương trình</u></h4>
        </div>
        <div style="margin-top: 20px">
            @if(!empty($certificateTime))
            <h4 class="title-3-certificate">"{{$certificateTime['certificate_time']['text']}}"</u></h4>
            @else
            <h4 class="title-3-certificate">"Huấn luyện và đào tạo sản phẩm năm ...."</u></h4>
            @endif
        </div>
        <div style="margin-top: 50px">
            @if(!empty($certificateTime))
            <h4 class="title-2-certificate">Hiệu lực từ ngày {{$certificateTime['certificate_time']['from_time']}} đến ngày {{$certificateTime['certificate_time']['to_time']}}</h4>
            @else
            <h4 class="title-2-certificate">Hiệu lực từ ngày __/ __/ ___ đến ngày __/ __/ ___</h4>
            @endif
        </div>
    </div>
</div>
@endsection
