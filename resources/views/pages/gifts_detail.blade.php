@extends('layouts.master')

@section('content')
<div style="text-align: center" class="mt-4">
    <div class="main-mini-footer-top font30">
        <span>ĐỔI QUÀ TẶNG</span>
    </div>
</div>
<div style="color: #eb212e; text-align: right; margin-bottom: 5px"><a style="color: #eb212e;" href="#">*Lưu ý khi đổi quà tặng</a></div>
<div class="text-white rounded bg-content div-main-account " style="text-align: -webkit-center;">
    <input type="hidden" id="score_user_gift" value="{{get_score_gift()}}"/>
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content"  style="margin-bottom: 1rem !important">
        <div class="container">
            <div class="testimonial-section">
                <div class="row">
                    <div class=" col-lg-12  project-item margin-top-style" id="" style="">
                        <div class="row">
                            <div class="col-lg-3 box-card-detail" style="width: 30%">
                                <p class="box-card-detail-title">@if($cardInfo['provider']['provider_type'] == 1) THẺ ĐIỆN THOẠI @elseif($cardInfo['provider']['provider_type'] == 2) PHIẾU MUA HÀNG @endif {{strtoupper($cardInfo['provider']['provider_name'])}}</p>
                                <p class="box-card-detail-price">{{number_format($cardInfo['price'] , 0, ',', '.')}}Đ</p>
                            </div>
                            <div class="col-lg-9"  style="width: 70%; text-align: left">
                                @if($cardInfo['provider']['provider_type'] == 1)
                                <p class="info-card-title">Thẻ nạp điện thoại {{($cardInfo['provider']['provider_name'])}} {{number_format($cardInfo['price'] , 0, ',', '.')}}VNĐ</p>
                                @elseif($cardInfo['provider']['provider_type'] == 2)
                                <p class="info-card-title">Phiếu mua hàng {{($cardInfo['provider']['provider_name'])}} {{number_format($cardInfo['price'] , 0, ',', '.')}}VNĐ</p>
                                @endif
                                <div class="class1">
                                    <?php 
                                    $score = ((int)($cardInfo['price'])/50000)*10;
                                    $limit = (int)(get_score_gift()/$score);
                                    ?>
                                    <p style="marign-top:0px;marign-bottom:0px !important;">{{$score}} điểm</p>
                                </div>
                                <div class="class2 row" style="margin-left: 0px !important">
                                    <div class="col-lg-6">
                                        <input type="hidden" id="limit_number_gift" value="{{$limit}}"/>
                                        <input type="hidden" id="limit_qty_gift" value="{{count_card($cardInfo['provider_id'], $cardInfo['price'])}}"/>
                                        <p style="margin-bottom: 0px;border-radius: 24px; background-color: #ffffff"><span style="color:#000000;cursor: pointer;"  id="decrease">-</span><span  style="color:#000000;padding-left: 14px;padding-right: 14px;" id="number">1</span><span style="color:#000000;cursor: pointer;" id="increase">+</span></p>    
                                    </div>
                                    <div class="col-lg-6">
                                        <p class="class3" data-target="#myModal" data-toggle="modal" data-backdrop="static" data-keyboard="false">Đổi quà</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                      
                        <div class="row class4" style="color: #000000">
                            * Sau khi đồng ý đổi quà, trong vòng 03 (ba) ngày làm việc hệ thống sẽ gửi mã quà tặng (đối với thẻ điện thoại và phiếu mua hàng) đến email hoặc vào tài khoản momo tương ứng với số điện thoại đã cung cấp.
                        </div>
                    </div>
                </div>
            </div><!--testimonial-section end-->
        </div>
    </div>
 <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="max-width: 821px">
    <div class="modal-content  rounded-0">
      
      <div class="modal-body modal-body-change">
      <div class="row" style="margin-left:0px; margin-right: 0px">
                    <div class=" col-lg-12  project-item margin-top-style" id="" style="margin-bottom: 0px">
                        <div class="row">
                            <div class="col-lg-4 box-card-detail" style="width: 30%">
                                <p class="box-card-detail-title">@if($cardInfo['provider']['provider_type'] == 1) THẺ ĐIỆN THOẠI @elseif($cardInfo['provider']['provider_type'] == 2) PHIẾU MUA HÀNG @endif {{strtoupper($cardInfo['provider']['provider_name'])}}</p>
                                <p class="box-card-detail-price box-card-detail-price-change">{{number_format($cardInfo['price'] , 0, ',', '.')}}Đ</p>
                            </div>
                            <div class="col-lg-8"  style="width: 70%; text-align: left">
                                @if($cardInfo['provider']['provider_type'] == 1)
                                <p class="info-card-title">Thẻ nạp điện thoại {{($cardInfo['provider']['provider_name'])}} {{number_format($cardInfo['price'] , 0, ',', '.')}}VNĐ</p>
                                @elseif($cardInfo['provider']['provider_type'] == 2)
                                <p class="info-card-title">Phiếu mua hàng {{($cardInfo['provider']['provider_name'])}} {{number_format($cardInfo['price'] , 0, ',', '.')}}VNĐ</p>
                                @endif
                                <div class="class1 class1-change">
                                    <?php 
                                    $score = ((int)($cardInfo['price'])/50000)*10;
                                    $limit = (int)(get_score_gift()/$score);
                                    ?>
                                    <input type="hidden" value="{{$score}}" id="score_number"/>
                                    <p style="marign-top:0px;marign-bottom:0px !important;" >{{$score}} điểm</p>
                                </div>
                            </div>
                            <div class="col-lg-12 mt-2"  style="width: 70%;">
                                <span class="class9"> <span class="class10">-</span><span  class="class11" id="number_refer">1</span><span  class="class10">+</span> </span>
                            </div>
                        </div>
                      
                        <div class=" class4" style="color: #000000">
                            <p class="class12">Tổng điểm quy đổi</p>
                            <p class="class13" ><span id="total_score">{{$score}}</span> điểm</p>
                        </div>
                        <form action="{{route('gifts-confirm')}}" method="POST">
                            @csrf()
                            <input type="hidden" value="{{$cardInfo['provider_id']}}" name="provider_id"/>
                            <input type="hidden" value="{{$cardInfo['price']}}" name="price"/>
                            <input type="hidden" value="1" id="qty" name="qty"/>
                            <div class=" class14" style="color: #000000">
                                <button class="class15">
                                    Xác nhận đổi điểm
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
      </div>
      
    </div>
  </div>
</div>
</div>

<script>
    $(document).ready(function(){
        $('.check-gift').click(function() {
            var temp = $(this).attr('id');
            id = temp.replace('card_','');
            window.location.href = window.location.href+'/detail/'+id;
        });
        $('#increase').click(function() {
            var limit = $('#limit_number_gift').val();
            var limitQty = $('#limit_qty_gift').val();
            var value = parseInt($('#number').text(), 10);
            if(value < limit && value < limitQty){
                value = isNaN(value) ? 0 : value;
                value++;
                $('#number').html(value);
                $('#number_refer').html(value);
                var temp = ($('#score_number').val() * value);
                $('#total_score').html(temp);
                $('#qty').val(value);
            }
        });
        $('#decrease').click(function() {
            var value = parseInt($('#number').text(), 10);
            value = isNaN(value) ? 0 : value;
            value < 1 ? value = 1 : '';
            value--;
            $('#number').html(value);
            $('#number_refer').html(value);
            var temp = ($('#score_number').val() * value);
            $('#total_score').html(temp);
            $('#qty').val(value);
        });
    });

    
</script>
@endsection
