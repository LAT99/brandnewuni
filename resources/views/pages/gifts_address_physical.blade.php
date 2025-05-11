@extends('layouts.master')

@section('content')
<div style="text-align: center" class="mt-4">
    <div class="main-mini-footer-top font30">
        <span>ĐỔI QUÀ TẶNG</span>
    </div>
</div>
<div style="color: #eb212e; text-align: right; margin-bottom: 5px"><a style="color: #eb212e;" href="#">*Lưu ý khi đổi quà tặng</a></div>
<div class="text-white rounded bg-content div-main-account " style="text-align: -webkit-center;">
    <div class="title-gift title-gift-address">Vui lòng điền thông tin để nhận quà tặng nhé</div>
    <input type="hidden" id="score_user_gift" value="{{get_score_gift()}}"/>
    <form action="{{route('gifts-save-physical')}}" method="POST">
                            @csrf()
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content"  style="margin-bottom: 1rem !important">
        <div class="container">
            <div class="testimonial-section">
                <div class="row">
                    <div class="class4">
                    * Sau khi đồng ý đổi quà, trong vòng 03 (ba) ngày làm việc hệ thống sẽ gửi mã quà tặng (đối với thẻ điện thoại và phiếu mua hàng) đến email hoặc vào tài khoản momo tương ứng với số điện thoại đã cung cấp.
                    </div>
                    <input type="hidden" name="gift_id" value="{{$gift_id}}"/>
                    <input type="hidden" name="gift_qty" value="{{$qty}}"/>
                    <div class="class4 class20">
                        <div class="form-group row">
                            <label for="inputPassword" class="col-2 col-form-label">Họ và tên</label>
                            <div class="col-10">
                            <input type="text" class="form-control" value="{{Auth::user()->name}}" required name="info_name" id="inputPassword" placeholder="" autocomplete="false">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputPassword" class="col-2 col-form-label">Số điện thoại</label>
                            <div class="col-10">
                            <input type="text" class="form-control" value="{{Auth::user()->phone}}" required name="info_phone" id="inputPassword" placeholder="" autocomplete="false">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputPassword" class="col-2 col-form-label">Email</label>
                            <div class="col-10">
                            <input type="text" class="form-control" value="{{Auth::user()->email}}" required name="info_email" id="inputPassword" placeholder="" autocomplete="false">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputPassword" class="col-2 col-form-label">Địa chỉ</label>
                            <div class="col-10">
                            <input type="text" class="form-control" value="{{Auth::user()->address}}" required name="info_address" id="inputPassword" placeholder="" autocomplete="false">
                            </div>
                        </div>
                    </div>
                    <div class="class4 class22" style="width: 100%">
                        <button class="class21">Gửi thông tin</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
 
</div>

<script>
    $(document).ready(function(){
        $('.check-gift').click(function() {
            var temp = $(this).attr('id');
            id = temp.replace('card_','');
            window.location.href = window.location.href+'/detail/'+id;
        });
    });
    
</script>
@endsection
