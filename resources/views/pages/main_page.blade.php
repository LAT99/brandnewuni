@extends('layouts.master')
@section('content')
<div class="jumbotron p-3 text-white rounded mt-4 jumbotron-change-bg" style="margin-bottom: 1rem !important">
    @if(!empty($banner))
        <image src="{{asset('images/banner')}}/{{$banner['banner']}}" class="image-main" style="height: auto !important"/>
    @endif
</div>
<div class="font-weight-bold title-content" style="margin-bottom: 1rem !important">Video</div>
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content"  style="margin-bottom: 1rem !important;">
        <div class="container">
            <div class="testimonial-section">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-9 project-item" >
                        <div class=" text-white rounded"> 
                            <figure class="col-md-12">
                                <div id="" class="introVid4 video-container video box-video" data-image ="{{asset('videos/tranining_1.mp4')}}" style="background-position: center; background-repeat: no-repeat;background-size: cover;opacity: 0.8;">
                                    <image src ="{{asset('images/quarter/')}}/{{$quarter->name}}" style="object-fit: contain ;"/>
                                    <!-- contain -->
                                    <div class="bt-play"></div>
                                    <div class="videoContainer" style="display:none">
                                        <div class="embed-responsive embed-responsive-4by3" style="position: unset !important;">
                                            <video mute playsinline  src="{{asset('videos/quarter/')}}/{{$quarter->video}}" controls style="max-height: 394px; !important"></video>
                                        </div>
                                    </div>
                                </div>
                            </figure>  
                        </div> 
                        <div style="text-align: center" class="mt-3">
                            <div class="main-mini-footer">Training Quý {{$quarter->month}}/{{$quarter->year}}</div>
                        </div>
                    </div>
                </div>
                    
            </div><!--testimonial-section end-->
        </div>
    </div>
    <div class="font-weight-bold title-content" style="margin-bottom: 1rem !important">Bài kiểm tra</div>
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content" style="text-align: -webkit-center;margin-bottom: 1rem !important:">
            <div class="testimonial-section">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-9 project-item" >
                        <div class=" text-white rounded"> 
                            <figure class="col-md-12">
                                <div id="" class="introVid4 video-container video box-video" data-image ="{{asset('videos/tranining_1.mp4')}}" style="background-position: center; background-repeat: no-repeat;background-size: cover;opacity: 0.8;">
                                    <image src ="{{asset('images/quarter/')}}/{{$quarter->name}}" style="object-fit: contain ;"/>
                                    <!-- contain -->
                                    <!-- <div class="bt-play"></div>
                                    <div class="videoContainer" style="display:none">
                                        <div class="embed-responsive embed-responsive-4by3" style="position: unset !important;">
                                            <video src="{{asset('videos/quarter/')}}/{{$quarter->video}}" controls style="height: 394px; !important"></video>
                                        </div>
                                    </div> -->
                                </div>
                            </figure>  
                        </div> 
                        <div style="text-align: center" class="mt-3">
                            <div class="main-mini-footer-top">
                                <span>Bài kiểm tra Quý {{$quarter->month}}/{{$quarter->year}}</span>
                            </div>
                            <div class="main-mini-footer-test main-mini-footer">
                                @if(!$checkQuestionGroup || !$infoQuestionTraning)
                                <div class="" style=""><a style="color: white">BẮT ĐẦU LÀM BÀI<a></div>
                                @else
                                <div class="" style=""><a style="color: white" href="{{route('question', ['id_training' => $quarter->id, 'group' => $checkQuestionGroup->group])}}">BẮT ĐẦU LÀM BÀI<a></div>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                    
            </div><!--testimonial-section end-->
    </div>
    <div class="font-weight-bold title-content" style="margin-bottom: 1rem !important">Bảng xếp hạng</div>
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content" style="text-align: -webkit-center;margin-bottom: 1rem !important">
        <div class="container">
        <table class="table table-borderless table-conetent-main">
            <thead>
                <tr>
                <th scope="col">STT</th>
                <th scope="col">Họ và tên</th>
                <th scope="col">Nơi làm việc</th>
                <th scope="col">Điểm số</th>
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
