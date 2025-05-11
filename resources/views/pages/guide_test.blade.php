@extends('layouts.master')

@section('content')
<div style="text-align: center" class="mt-3 mb-3">
    <div class="main-mini-footer-top font30">
        <span>BÀI KIỂM TRA QUÝ {{$month}}/{{$year}}</span>
    </div>
</div>
<input type="hidden" id="check_seen" value="@if(!$infoUserTraining) true @endif"/>
<input type="hidden" id="route_seen" value="{{route('submit-seen')}}"/>
<input type="hidden" id="training_seen" value="{{$id}}"/>
<div class="text-white rounded bg-content div-main-account" style="text-align: -webkit-center;">
    <div class="div-main-account-hader div-main-account-hader-change">
        <div class="row" style="margin:0px !important">
            <div class="col-lg-11" style="padding-top: 10px; padding-bottom: 15px;">
                Video Training Quý {{$month}}/{{$year}}
            </div>
            <!-- <div class="col-lg-1 checkbox-exam"> -->
                <!-- <input type="checkbox" @if($infoUserTraining) checked @endif class="cb-chk" id="cb1">숨겨진 checkbox -->
                <!-- <label for=""></label> -->
            <!-- </div> -->
        </div>
    </div>
    @if(!empty($trainingManagement['video_management']))
        <div class="container p-3 p-md-5 " >
            <div class="row project-carousel slick-slider">
                <div class="col-lg-8 project-item" >
                    <div class=" text-white rounded"> 
                        <figure class="col-md-12">
                            <div id="" class="introVid4 video-container video box-video" data-image ="{{asset('videos/traninig_2.mp4')}}" style="background-position: center; background-repeat: no-repeat;background-size: cover;opacity: 0.8;">
                                <image src ="{{asset('images/quarter/')}}/{{$trainingManagement['name']}}" style="object-fit: contain ;"/>    
                                <div class="bt-play"></div>
                                <div class="videoContainer" style="display:none">
                                    <div class="embed-responsive embed-responsive-4by3" style="position: unset !important;">
                                        <video class="main-video" mute playsinline  src="{{asset('videos/quarter/')}}/{{$trainingManagement['video']}}" controls style="max-height: 346px; !important"></video>
                                    </div>
                                </div>
                            </div>
                        </figure>  
                    </div>
                </div>
                @if(!empty($trainingManagement['video_management']))
                @foreach($trainingManagement['video_management'] as $videoDetail)
                <div class="col-lg-8 project-item" >
                    <div class=" text-white rounded"> 
                        <figure class="col-md-12">
                            <div id="" class="introVid4 video-container video box-video" data-image ="{{asset('videos/traninig_2.mp4')}}" style="background-position: center; background-repeat: no-repeat;background-size: cover;opacity: 0.8;">
                                <image src ="{{asset('images/quarter/')}}/{{$videoDetail['image']}}" style="object-fit: contain ;"/>    
                                <div class="bt-play"></div>
                                <div class="videoContainer" style="display:none">
                                    <div class="embed-responsive embed-responsive-4by3" style="position: unset !important;">
                                        <video class="main-video" mute playsinline  src="{{asset('videos/quarter/')}}/{{$videoDetail['video']}}" controls style="max-height: 346px; !important"></video>
                                    </div>
                                </div>
                            </div>
                        </figure>  
                    </div>
                </div>
                @endforeach
                @endif
            </div>
        </div>
    @else
        <div class="container p-3 p-md-5 " >
            <div class="col-lg-8 project-item" >
                <div class=" text-white rounded"> 
                    <figure class="col-md-12">
                        <div id="" class="introVid4 video-container video box-video" data-image ="{{asset('videos/traninig_2.mp4')}}" style="background-position: center; background-repeat: no-repeat;background-size: cover;opacity: 0.8;">
                            <image src ="{{asset('images/quarter/')}}/{{$trainingManagement['name']}}" style="object-fit: contain ;"/>    
                            <div class="bt-play"></div>
                            <div class="videoContainer" style="display:none">
                                <div class="embed-responsive embed-responsive-4by3" style="position: unset !important;">
                                    <video class="main-video" mute playsinline  src="{{asset('videos/quarter/')}}/{{$trainingManagement['video']}}" controls style="max-height: 346px; !important"></video>
                                </div>
                            </div>
                        </div>
                    </figure>  
                </div>
            </div>
        </div>
    @endif
</div>
<div class="text-white rounded bg-content div-main-account" style="text-align: -webkit-center;margin-bottom: 4rem !important">
    <div class="div-main-account-hader div-main-account-hader-change">
        <div class="row" style="margin:0px !important">
            <div class="col-lg-11" style="padding-top: 10px; padding-bottom: 15px;">
                Bài Kiểm Tra
            </div>
            <!-- <div class="col-lg-1 checkbox-exam"> -->
                <!-- <input type="checkbox" @if($infoUserTest) checked @endif id="cb1">숨겨진 checkbox -->
                <!-- <label for=""></label> -->
            <!-- </div> -->
        </div>
    </div>
    <div class="container p-3 p-md-5 " >
        <div class="col-lg-8 project-item" >
            <div class=" text-white rounded"> 
                <p class="color-black">Số lần làm bài: <span class="font-weight-bold">{{get_count_tested_quarter($id)}}/10</span></p>
                <p class="color-black">Thời hạn nộp bài: <span class="font-weight-bold">{{get_time_test_config('time_test')}}</span></p>
                <p class="color-black">Thời gian làm bài: <span class="font-weight-bold">20 phút</span></p>
                <div style="text-align: center; margin-top: 30px;" class="">
                    <div class="main-mini-footer-test main-mini-footer">
                        @if($idGroupQuestionActive && get_count_tested_quarter($id) < 10)
                            <div class="link-start-test @if((!$infoQuestionTraning)) disable-links @endif" style=""><a class="" href="{{route('question', ['id_training' => $id, 'group' => $idGroupQuestionActive])}}" style="color: white">BẮT ĐẦU LÀM BÀI</a></div>
                        @else
                            <div class="link-start-test disable-links" style=""><a class="" href="#" style="color: white">BẮT ĐẦU LÀM BÀI</a></div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function(){
        $('.introVid4').click(function() {
            $(this).find(".bt-play").removeClass('bt-play');
            // $(this).find("iframe")[0].src += "?autoplay=1&loop=1&rel=0&wmode=transparent?";
            $(this).find(".main-video").trigger('play');
            setTimeout(function(){ 
                $(this).find(".videoContainer").show();
            }.bind(this), 1000); // 1000 being 1s in ms
            var check_seen = $('#check_seen').val();
            var link = $('#route_seen').val();
            // alert(link);
            var idTraining = $('#training_seen').val();
            // if(check_seen){
            //     $.ajaxSetup({
            //         headers: {
            //             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            //         }
            //     });
            //     $.ajax({
            //         type: "POST",
            //         url: link,
            //         data: {'idTraining': idTraining},
            //         cache: false,
            //         success: function(data){
            //             $('.link-start-test').removeClass('disable-links');
            //             // $('.cb-chk').prop('checked', true);
            //         }
            //     });
            // }
        });
    });
    
</script>
@endsection
