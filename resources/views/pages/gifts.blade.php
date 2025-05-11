@extends('layouts.master')

@section('content')
<div style="text-align: center" class="mt-4">
    <div class="main-mini-footer-top font30">
        <span>ĐỔI QUÀ TẶNG</span>
    </div>
</div>
<div style="color: #eb212e; text-align: right; margin-bottom: 5px"><a style="color: #eb212e;" target="_blank"  href="{{route('gifts-notice')}}">*Lưu ý khi đổi quà tặng</a></div>
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
<div class="text-white rounded bg-content div-main-account " style="text-align: -webkit-center;">
    <div class="title-gift">Thẻ nạp điện thoại</div>
    <input type="hidden" id="score_user_gift" value="{{get_score_gift()}}"/>
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content"  style="margin-bottom: 1rem !important">
        <div class="container">
            <div class="testimonial-section">
                <div class="row">
                @if(!empty($cards))
                    @foreach($cards as $card)
                    @if($card['provider']['provider_type'] == 1)
                    <?php $score = ((int)($card['price'])/50000)*10;?>
                    <div class=" col-lg-5  project-item margin-top-style box-card check-gift @if($checkGift < $score) box-card-op @endif" id="{{$card['price'].'_'.$card['provider_id']}}" style="margin-left: 4%; margin-right: 4%;">
                        <div class="div-card-title">
                            <p class="box-card-title">THẺ ĐIỆN THOẠI {{strtoupper($card['provider']['provider_name'])}}</p>
                        </div>
                        <div class="div-card-price">
                            <p class="box-card-price">{{number_format($card['price'])}}Đ</p>
                        </div>
                        <div class="div-card-score">
                            <div class="box-card-score">{{$score}} ĐIỂM</div>
                        </div>
                    </div>
                    @endif
                    @endforeach
                @endif
                </div>
            </div><!--testimonial-section end-->
        </div>
    </div>

    <div class="title-gift">Phiếu mua hàng</div>
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content"  style="margin-bottom: 1rem !important">
        <div class="container">
            <div class="testimonial-section">
                <div class="row">
                @if(!empty($cards))
                    @foreach($cards as $card)
                    @if($card['provider']['provider_type'] == 2)
                    <?php $score = ((int)($card['price'])/50000)*10;?>
                    <div class=" col-lg-5  project-item margin-top-style box-card check-gift @if($checkGift < $score) box-card-op @endif" id="{{$card['price'].'_'.$card['provider_id']}}" style="margin-left: 4%; margin-right: 4%;">
                        <div class="div-card-title">
                            <p class="box-card-title">PHIẾU MUA HÀNG {{strtoupper($card['provider']['provider_name'])}}</p>
                        </div>
                        <div class="div-card-price">
                            <p class="box-card-price">{{number_format($card['price'])}}Đ</p>
                        </div>
                        <div class="div-card-score">
                            <div class="box-card-score">{{$score}} ĐIỂM</div>
                        </div>
                    </div>
                    @endif
                    @endforeach
                @endif
                </div>
            </div><!--testimonial-section end-->
        </div>
    </div>

    <div class="title-gift">Quà tặng vật lý</div>
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content"  style="margin-bottom: 1rem !important">
        <div class="container">
            <div class="testimonial-section">
                <div class="row">
                @if(!empty($physicalGifts))
                    @foreach($physicalGifts as $physicalGift)
                    <?php $score = (int)$physicalGift['score']?>
                    <div class="image-with-text col-lg-5  project-item margin-top-style box-card box-card-change check-gift-physical @if($checkGift < $score) box-card-op @endif" id="{{$physicalGift['id']}}" style="margin-left: 4%; margin-right: 4%;">
                    <img src ="{{asset('images/gifts/')}}/{{$physicalGift['image']}}" />
                        <div class="div-card-score">
                            <div class="box-card-score box-card-score-4">{{$score}} ĐIỂM</div>
                        </div>
                    </div>
                    @endforeach
                @endif
                </div>
            </div><!--testimonial-section end-->
        </div>
    </div>
 
</div>

<script>
    $(document).ready(function(){
        $('.check-gift').click(function() {
            var temp = $(this).attr('id');
            var trainindIdArray = temp.split('_');
            var score = trainindIdArray[0];
            var provider_id = trainindIdArray[1];
            window.location.href = window.location.href+'/detail/'+score+'/'+provider_id;
        });

        $('.check-gift-physical').click(function() {
            var temp = $(this).attr('id');
            window.location.href = window.location.href+'/physical/detail/'+temp;
        });
    });
    
</script>
@endsection
