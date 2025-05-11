@extends('layouts.master')

@section('content')

<div class="text-white rounded bg-content div-main-account mt-4" style="text-align: -webkit-center;">
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content" style="text-align: -webkit-center;margin-bottom: 1rem !important">
        <div class="container" style="color: #000000; text-align: left">
        <h1 class="mb-5">{{$news->title}}</h1>
        @if($news)
            {!!$news->content_detail!!}
        @endif
        </div>
    </div>
</div>

<script>
    
    
</script>
@endsection
