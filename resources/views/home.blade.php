@extends('layouts.master')

@section('content')

<div style="text-align: center" class="mt-3 mb-3">
    <div class="main-mini-footer-top font30">
        <span>TÀI KHOẢN CỦA BẠN</span>
    </div>
</div>
<div class="jumbotron p-3 p-md-5 text-white rounded bg-content div-main-account" style="text-align: -webkit-center;margin-bottom: 1rem !important">
    <div class="container">
    <table class="table table-bordered div-main-account-table">
        <tbody>
            <tr>
                <th scope="row">Họ và tên</th>
                <td>{{ $staff[0]['name'] }}</td>
            </tr>
            <tr>
                <th scope="row">Email</th>
                <td>{{ $staff[0]['email'] }}</td>
            </tr>
            <tr>
                <th scope="row">Số điện thoại</th>
                <td>{{ $staff[0]['phone'] }}</td>
            </tr>
            <tr>
                <th scope="row">Địa chỉ</th>
                <td>{{ $staff[0]['address'] }}</td>
            </tr>
            <tr>
                <th scope="row">Đối tượng tham gia</th>
                <td>{{ $participantsList[$staff[0]['participants']] }}</td>
            </tr>
            <tr>
                <th scope="row">Nơi làm việc</th>
                <td>{{ $staff[0]['place_work'] }}</td>
            </tr>
            <tr>
                <th scope="row">Số điểm tích lũy</th>
                <td>
                    @if( !empty($staff[0]['user_test_history']) )
                        {{get_score_gift()}} điểm
                    @endif
                </td>
            </tr>
            <tr>
                <th scope="row">Số lần làm bài</th>
                <td>
                    @if( !empty($staff[0]['user_test_history']) )
                        {{ $staff[0]['user_test_history'][0]['count_test'] }} lần
                    @endif
                </td>
            </tr>
            <tr>
                <th scope="row">Thứ hạng</th>
                <td>{{ get_rank() }}</td>
            </tr>
            <tr>
                <th scope="row">Số điểm đã đổi</th>
                <td></td>
            </tr>
        </tbody>
    </table>
    </div>
</div>
<div class="row mt-5">
    <div class="col-md-4 col-xs-6">
        <div style="text-align: center;" class="">
            <div class="main-mini-footer-test main-mini-footer main-mini-footer-test-change" style="width: 100%">
                <div class="" style="">ĐỔI QUÀ TẶNG</div>
            </div>
        </div>
    </div>
    @if(get_score() < 18)
    <div class="col-md-4 col-xs-6">
    </div>
    @endif
    <div class="col-md-4 col-xs-6">
        <div style="text-align: center;margin-bottom: 4rem !important" class="">
            <div class="main-mini-footer-test main-mini-footer" style="width: 100%">
                <div class="" style=""><a style="color: #ffffff" href="{{route('profile-seen-test')}}">XEM BÀI ĐÃ KIỂM TRA</a></div>
            </div>
        </div>
    </div>
    @if(get_score() >= 18)
    <div class="col-md-4 col-xs-6">
        <div style="text-align: center;margin-bottom: 4rem !important" class="">
            <div class="main-mini-footer-test main-mini-footer" style="width: 100%">
                <div class="" style=""><a style="color: #ffffff" href="{{route('certificate')}}">XEM GIẤY CHỨNG NHẬN</a></div>
            </div>
        </div>
    </div>
    @endif
</div>


@endsection
