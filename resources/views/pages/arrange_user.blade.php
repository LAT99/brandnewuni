@extends('layouts.master')

@section('content')

<div class="text-white rounded bg-content div-main-account mt-4" style="text-align: -webkit-center;">
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content" style="text-align: -webkit-center;margin-bottom: 1rem !important">
        <div class="container">
        <table class="table table-borderless table-conetent-main">
            <thead>
                <tr>
                <th scope="col">STT</th>
                <th scope="col">Họ và tên</th>
                <th scope="col">Nơi làm việc</th>
                <th scope="col">Điểm số cao nhất</th>
                </tr>
            </thead>
            <tbody>
                @foreach($arrangeUser as $no => $arrange)
                <tr>
                    <td scope="row">{{$no+1}}</td>
                    <td>{{$arrange['user']['name']}}</td>
                    <td>{{$arrange['user']['place_work']}}</td>
                    <td>{{$arrange['score']}}</td>
                </tr>
                @endforeach
            </tbody>
            </table>
        </div>
    </div>
</div>

<script>
    
    
</script>
@endsection
