

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>DELL</title>

    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:300);

        .login-page {
        width: 360px;
        padding: 8% 0 0;
        margin: auto;
        }
        .form {
        border-radius: 15px;
        position: relative;
        z-index: 1;
        background: #FFFFFF;
        max-width: 360px;
        margin: 0 auto 100px;
        padding: 15px 45px 45px;
        text-align: center;
        box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }
        .form input {
        font-family: "Roboto", sans-serif;
        outline: 0;
        background: #f2f2f2;
        width: 100%;
        border: 0;
        margin: 0 0 15px;
        padding: 15px;
        box-sizing: border-box;
        font-size: 14px;
        }
        .form button {
        font-family: "Roboto", sans-serif;
        text-transform: uppercase;
        outline: 0;
        background: #009fe3;
        width: 100%;
        border: 0;
        padding: 15px;
        color: #FFFFFF;
        font-size: 14px;
        -webkit-transition: all 0.3 ease;
        transition: all 0.3 ease;
        cursor: pointer;
        }
        .form button:hover,.form button:active,.form button:focus {
        background: #009fe3;
        }
        .form .message {
        margin: 15px 0 0;
        color: #b3b3b3;
        font-size: 12px;
        }
        .form .message a {
        color: #009fe3;
        text-decoration: none;
        }
        .form .register-form {
        display: none;
        }
        .container {
        position: relative;
        z-index: 1;
        max-width: 300px;
        margin: 0 auto;
        }
        .container:before, .container:after {
        content: "";
        display: block;
        clear: both;
        }
        .container .info {
        margin: 50px auto;
        text-align: center;
        }
        .container .info h1 {
        margin: 0 0 15px;
        padding: 0;
        font-size: 36px;
        font-weight: 300;
        color: #1a1a1a;
        }
        .container .info span {
        color: #4d4d4d;
        font-size: 12px;
        }
        .container .info span a {
        color: #000000;
        text-decoration: none;
        }
        .container .info span .fa {
        color: #EF3B3A;
        }
        body {
        background: #009fe3; /* fallback for old browsers */
        background: -webkit-linear-gradient(right, #009fe3, #009fe3);
        background: -moz-linear-gradient(right, #009fe3, #009fe3);
        background: -o-linear-gradient(right, #009fe3, #009fe3);
        background: linear-gradient(to left, #009fe3, #009fe3);
        font-family: "Roboto", sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        }
        .logo {
            padding-bottom: 15px
        }
        .label{
            text-align: left;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="login-page">
        <div class="form">
            <div class="logo">
                <img src="/images/dell-logo-970ADE9CAE-seeklogo.com.png" width="50px" alt="">
            </div>

            <form method="POST" action="{{ route('password.email') }}">
                @csrf
                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Nhập địa chỉ email" autofocus/>
                <button type="submit">
                    {{ __('Gửi liên kết đặt lại mật khẩu') }}
                </button>

                @error('email')
                    <div style="padding-top:15px">
                        <small style='color:red'>
                            {{ __('Email không tồn tại trên hệ thống!') }}
                        </small>
                    </div>
                @enderror
                <p class="message"><a href="{{ route('login') }}">Quay lại trang Đăng nhập</a></p>
            </form>
        </div>
    </div>

      <script>
        $('.message a').click(function(){
            $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
        });
      </script>
</body>
</html>
