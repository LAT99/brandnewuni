<header class="blog-header py-3">
        <!-- <div class="row flex-nowrap justify-content-between align-items-center"> -->
    <div class="row flex-nowrap align-items-center">
    <div class="col-2 pt-1">
        <a class="text-muted" href="#">
            <img src="/images/dell-logo-970ADE9CAE-seeklogo.com.png" alt="..." height="65">
        </a>
    </div>
    <div class="col-6 text-center">
        <form class="mx-2 my-auto w-100">
                <div class="search">
                   <input type="text" class="searchTerm" placeholder="Nhập nội dung cần tìm kiếm...">
                   <button type="button" class="searchButton">
                     <i class="fa fa-search"></i>
                  </button>
             </div>
        </form>
    </div>
    <div class="col-4 justify-content-end align-items-center text-right">
            <div class="pb-2 font-weight-bold">
                Xin chào <span><a href="{{route('profile')}}" style="color: #212529">{{ auth()->user()->name }}</a></span>
            </div>
            <div class="">
                <span style="color: #9f9f9f">Quý hội viên hiện có:</span> <span style="color: #009fe3" class="font-weight-bold">{{ get_score_gift() }} Điểm</span>
            </div>
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <button type="submit" class="btn-sm btn btn-link" style="color: #009fe3">Đăng xuất <i class="fa fa-sign-out"></i></button>
            </form>

    </div>
</header>
<nav class="navbar navbar-expand-lg bg-custom">
    <div class="container">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar10">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbar10">
            <ul class="navbar-nav nav-fill w-100">
                <li class="nav-item ">
                    <a class="nav-link {{ request()->is('main-page') ? 'active' : '' }}" href="{{route('main-page')}}">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ request()->is('video') ? 'active' : '' }}" href="{{route('videos')}}">Video</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ request()->is('test-page') || request()->is('test-page/*') || request()->is('questions/*') || request()->is('question/resutl/*') ? 'active' : '' }}" href="{{route('test-page')}}">Bài kiểm tra</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ request()->is('ratings') ? 'active' : '' }}" href="{{route('ratings')}}">Bảng xếp hạng</a>
                </li>
                <li class="nav-item">
                <a class="nav-link {{ request()->is('news') || request()->is('news/*') ? 'active' : '' }}" href="{{route('show-news')}}">Tin tức</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ request()->is('rules') ? 'active' : '' }}" href="{{route('show-rules')}}">Thể lệ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ request()->is('gifts') || request()->is('gifts/*') ? 'active' : '' }}" href="{{route('gifts')}}">Tích điểm đổi quà</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

  <style>
    .bg-custom {
        background-color: #009fe3!important;
    }
    .bg-custom .nav-link {
        color: #fff !important;
    }

    .bg-custom .active {
        color:  #009fe3 !important;
        border: 1px #fff solid;
        background-color: #fff;
        border-radius: 5px;
    }
  </style>
