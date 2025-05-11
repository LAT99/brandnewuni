@extends('layouts.master')

@section('content')

<div class="text-white rounded bg-content div-main-account mt-4" style="text-align: -webkit-center;">
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content"  style="margin-bottom: 1rem !important">
        <div class="container">
            <div class="testimonial-section">
                <div class="row">
                    @foreach($news as $new)
                    <div class=" col-lg-6 project-item margin-top-style" >
                        <div class=" text-white rounded"> 
                            <div class="row">
                                <div class="col-md-12">
                                    <figure class="col-md-12">
                                        <div id="" class="introVid4 video-container video box-video" data-image ="{{asset('videos/tranining_1.mp4')}}" style="background-position: center; background-repeat: no-repeat;background-size: cover;opacity: 0.8;">
                                            <image src ="{{asset('images/news/')}}/{{$new->image}}" style="object-fit: ;"/>    
                                            
                                        </div>
                                    </figure>  
                                </div>
                            </div>
                        </div> 
                        <div style="text-align: center; padding-right: 15px;padding-left: 15px;" class="">
                            <div class="title-news">
                                <p class="title-news-main"><a href="{{route('detail-news', ['id' => $new->id, 'slug' => $new->url])}}">{{$new->title}}</a></p>
                                <p class="title-news-detail" style="margin-bottom:0px">{{$new->content_short}}</p>
                                <p style="text-align: right;"><u>{{date('Y.m.d', strtotime($new->created_at))}}</u></p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                    
            </div><!--testimonial-section end-->
        </div>
    </div>
</div>

<script>
    
    
</script>
@endsection
