<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <!-- <li ><a href="index.html"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li> -->
    @canany(['management_quarter', 'management'])
    <li class="@if(Request::is('admin/management-quarter')) active @endif"> <a href="{{route('management-quarter')}}"><i class="icon icon-signal"></i> <span>Quản lý quý</span></a> </li>
    @endcanany
    @canany(['management_videos', 'management'])
    <li class="@if(Request::is('admin/management-videos')) active @endif"><a href="{{route('management-videos')}}"><i class="icon icon-pencil"></i> <span>Quản lý videos</span></a></li>
    @endcanany
    @canany(['management_questions', 'management'])
    <li class="@if(Request::is('admin/management-questions/*') || Request::is('admin/management-questions')) active @endif"> <a href="{{route('management-questions')}}"><i class="icon icon-inbox"></i> <span>Quản lý câu hỏi</span></a> </li>
    @endcanany
    @canany(['management_agency', 'management'])
    <li class="@if(Request::is('admin/management-staff')) active @endif"><a href="{{route('management-staff')}}"><i class="icon icon-th"></i> <span>Quản lý đại lý</span></a></li>
    @endcanany
    <li class="@if(Request::is('')) active @endif"><a href="{{route('managements-users')}}"><i class="icon icon-file"></i> <span>Quản lý nhân viên</span></a></li>
    @canany(['management_common', 'management'])
    <li class="@if(Request::is('admin/management-common')) active @endif"><a href="{{route('management-common')}}"><i class="icon icon-pencil"></i> <span>Thông tin chung</span></a></li>
    @endcanany
    @canany(['management_rule', 'management'])
    <li class="@if(Request::is('admin/management-rules')) active @endif"><a href="{{route('management-rules')}}"><i class="icon icon-pencil"></i> <span>Quản lý Thể lệ</span></a></li>
    @endcanany
    @canany(['management_news', 'management'])
    <li class="@if(Request::is('admin/management-news') || Request::is('admin/management-news/*')) active @endif"><a href="{{route('management-news')}}"><i class="icon icon-pencil"></i> <span>Quản lý tin tức</span></a></li>  
    @endcanany
    <!-- <li class="@if(Request::is('admin/management-gift') || Request::is('admin/management-gift/*')) active @endif submenu"><a href="#"><i class="icon icon-pencil"></i> <span>Quản lý quà tặng</span><span class="label label-important">3</span></a>  -->
    @canany(['management_gift', 'management'])
    <li class="submenu @if(Request::is('admin/management-gift') || Request::is('admin/management-gift/*')) open active @endif"> <a href="#"><i class="icon icon-th-list"></i> <span>Quản lý quà tặng</span> <span class="label label-important">3</span></a> 
      <ul>
        <li><a href="{{route('management-gift-physical')}}">Quà tặng vật lý</a></li>
        <li><a href="{{route('management-gift-online')}}">Quà tặng online</a></li>
        <li><a href="{{route('management-gift')}}">Chung</a></li>
      </ul>
    </li>
    @endcanany
  </ul>
</div>