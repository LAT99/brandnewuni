@extends('layouts.master')

@section('content')

<div class="text-white rounded bg-content div-main-account mt-4" style="text-align: -webkit-center;">
    <div class="jumbotron p-3 p-md-5 text-white rounded bg-content" style="text-align: -webkit-center;margin-bottom: 1rem !important">
        <div class="container">
        <table class="table table-borderless table-conetent-main">
            <thead>
                <tr>
                    <th scope="col">STT</th>
                    <th scope="col">Chủ đề</th>
                    <th scope="col">Điểm số</th>
                    <th scope="col">Ngày thực hiện</th>
                    <th scope="col">Chi tiết</th>
                </tr>
            </thead>
            <tbody>
                @foreach($checkList as $no => $checks)
                <tr>
                    <td scope="row">{{$no+1}}</td>
                    @if($checks->type == 0)
                    <td> Đã thực hiện "Bài kiểm tra Quý {{$checks->trainingManagement->month}}/{{$checks->trainingManagement->year}}"</td>
                    @else
                    <td> Đã xem video "Bài kiểm tra Quý {{$checks->trainingManagement->month}}/{{$checks->trainingManagement->year}}"</td>
                    @endif
                    <td>{{$checks->score}}</td>
                    <td>{{date('d-m-Y H:i', strtotime($checks->created_at))}}</td>
                    @if($checks->type == 0)
                    <td>
                        <a href="{{route('history-correct-answer', ['id_training' => $checks->id_training, 'group' => $checks->question_group, 'id_history' => $checks->id ])}}" style="color: #007bff">Xem chi tiết</a>
                    </td>
                    @else
                    <td></td>
                    @endif
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
