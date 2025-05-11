@extends('layouts.master')

@section('content')

<div style="text-align: center" class="mt-3 mb-3">
    <div class="main-mini-footer-top font30">
        <span>BÀI KIỂM TRA</span>
    </div>
</div>
<div class="text-white rounded bg-content div-main-account" style="text-align: -webkit-center;">
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content"  style="margin-bottom: 1rem !important">
        <div class="container">
            <div class="testimonial-section">
                <div class="row  d-flex justify-content-center">
                    @if($training)
                    <div class="col-lg-9 project-item margin-top-style" >
                        <div class=" text-white rounded"> 
                            <figure class="col-md-12">
                                <div id="" class="introVid4 video-container video box-video" data-image ="{{asset('videos/tranining_1.mp4')}}" style="background-position: center; background-repeat: no-repeat;background-size: cover;opacity: 0.8;">
                                    <image src ="{{asset('images/quarter/')}}/{{$training->name}}" style="object-fit: contain;"/>    
                                </div>
                            </figure>  
                        </div> 
                        <div style="text-align: center" class="mt-3 div-test-top">Bài kiểm tra Quý {{$training->month}}/{{$training->year}}</div>
                        <div style="text-align: center" class="mt-3">
                            <div class="main-mini-footer color-white" style ="background-color: #009fe3 !important"><a class="color-white" href="{{route('test-page-detail', ['month' => $training->month, 'year' => $training->year, 'id' => $training->id])}}">BẮT ĐẦU KIỂM TRA</a></div>
                        </div>
                    </div>
                    @endif
                </div>
                    
            </div><!--testimonial-section end-->
        </div>
    </div>
</div>

<script>
    
    
</script>
@endsection
