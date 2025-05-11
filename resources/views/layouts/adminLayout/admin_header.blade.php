<div id="header">
  <h1><a>Matrix Admin</a></h1>
</div>
<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Xin chào: {{Auth::user()->name}}</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li class="change-pass"><a href="{{ route('change-pass-staff') }}"><i class="icon-user"></i>Thay đổi mật khẩu</a></li>
        <!-- <li class="divider"></li> -->
      </ul>
    </li>
    <li class=""><a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
    {{ csrf_field() }}
    </form>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->

<!--close-top-serch-->