@extends('layouts.master')

@section('content')

<div class="text-white rounded bg-content div-main-account mt-4" style="text-align: -webkit-center;">
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content"  style="margin-bottom: 1rem !important">
        <div class="container">
            <div class="testimonial-section">
                <div class="row">
                    @foreach($quarters as $quarter)
                    <div class="@if(count($quarters) == 1) col-lg-6  @else col-lg-6 @endif project-item margin-top-style" >
                        <div class=" text-white rounded"> 
                            <figure class="col-md-12">
                                <div id="" class="introVid4 video-container video box-video" data-image ="{{asset('videos/tranining_1.mp4')}}" style="background-position: center; background-repeat: no-repeat;background-size: cover;opacity: 0.8;">
                                    <image src ="{{asset('images/quarter/')}}/{{$quarter['name']}}" style="object-fit: contain;"/>    
                                    <div class="bt-play"></div>
                                    <div class="videoContainer" style="display:none">
                                        <div class="embed-responsive embed-responsive-4by3" style="position: unset !important;">
                                            <video mute playsinline  src="{{asset('videos/quarter/')}}/{{$quarter['video']}}" controls style="max-height: 251px; !important"></video>
                                        </div>
                                    </div>
                                </div>
                            </figure>  
                        </div> 
                        <div style="text-align: center" class="mt-3">
                            <div class="main-mini-footer">Training Quý {{$quarter['month']}}/{{$quarter['year']}}</div>
                        </div>
                    </div>
                        @if(!empty($quarter['video_management']))
                        @foreach($quarter['video_management'] as $videoDetail)
                        <div class="col-lg-6  project-item margin-top-style" >
                            <div class=" text-white rounded"> 
                                <figure class="col-md-12">
                                    <div id="" class="introVid4 video-container video box-video" data-image ="{{asset('videos/tranining_1.mp4')}}" style="background-position: center; background-repeat: no-repeat;background-size: cover;opacity: 0.8;">
                                        <image src ="{{asset('images/quarter/')}}/{{$videoDetail['image']}}" style="object-fit: contain;"/>    
                                        <div class="bt-play"></div>
                                        <div class="videoContainer" style="display:none">
                                            <div class="embed-responsive embed-responsive-4by3" style="position: unset !important;">
                                                <video mute playsinline  src="{{asset('videos/quarter/')}}/{{$videoDetail['video']}}" controls style="max-height: 251px; !important"></video>
                                            </div>
                                        </div>
                                    </div>
                                </figure>  
                            </div> 
                            <div style="text-align: center" class="mt-3">
                                <div class="main-mini-footer">Training Quý {{$quarter['month']}}/{{$quarter['year']}}</div>
                            </div>
                        </div>
                        @endforeach
                        @endif
                    @endforeach
                    <!-- <div class="col-lg-6 project-item" >
                        <div class=" text-white rounded"> 
                            <figure class="col-md-12">
                                <div id="" class="introVid4 video-container video box-video" data-image ="{{asset('videos/tranining_1.mp4')}}" style="background: url('{{asset('images/background.jpg')}}'); background-position: center; background-repeat: no-repeat;background-size: cover;opacity: 0.8;">
                                    <div class="bt-play"></div>
                                    <div class="videoContainer" style="display:none">
                                        <div class="embed-responsive embed-responsive-4by3" style="position: unset !important;">
                                            <video src="{{asset('videos/traninig_2.mp4')}}" controls></video>
                                        </div>
                                    </div>
                                </div>
                            </figure>  
                        </div>
                        <div style="text-align: center" class="mt-3">
                            <div class="main-mini-footer">Training Quý 3/2021</div>
                        </div>
                    </div> -->
                </div>
                    
            </div><!--testimonial-section end-->
        </div>
    </div>
</div>
<script>
    $(document).ready(function(){
        $('.introVid4').click(function() {
            $(this).find(".bt-play").removeClass('bt-play');
            // $(this).find("iframe")[0].src += "?autoplay=1&loop=1&rel=0&wmode=transparent?";
            $(this).find("video")[0].play();
            setTimeout(function(){ 
                $(this).find(".videoContainer").show();
            }.bind(this), 1000); // 1000 being 1s in ms
        });
    });
    
</script>
@endsection
