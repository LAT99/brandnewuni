<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>Dell training</title>

    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:300);

        .login-page {
        width: 45%;
        padding: 8% 0 0;
        margin: auto;
        }
        .form {
        border-radius: 15px;
        position: relative;
        z-index: 1;
        background: #FFFFFF;
        margin: 0 auto 100px;
        padding: 15px 45px 45px;
        text-align: center;
        box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }
        .form input, .form select {
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
        #policy_show {
            border: 1px solid #009fe3;
            max-height: 200px;
            overflow: auto;
            text-align: left;
            padding: 10px;
            padding-left: 20px;
            padding-right: 20px;
        }
        .policy-show-hidden {
            display: none;
        }
    </style>
</head>
<body>
    <div class="login-page">
        <div class="form">
            <div class="logo">
                <img src="/images/dell-logo-970ADE9CAE-seeklogo.com.png" width="50px" alt="">
            </div>
            <div class="card-body">
                <form method="post" route="{{route('register')}}">
                        @csrf
                        <div class="form-group" style="text-align: left">
                            <label for="name">Họ và tên</label>
                            <input type="text" required class="form-control @error('name') is-invalid @enderror" value="{{ old('name') }}" id="name" name="name" autocomplete="">
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>
                        <div class="form-group" style="text-align: left">
                            <label for="email">Địa chỉ email</label>
                            <input type="email" required class="form-control @error('email') is-invalid @enderror" value="{{ old('email') }}" id="email" name="email" autocomplete="">
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            <small id="emailHelp" class="form-text text-muted"></small>
                        </div>
                        <div class="form-group" style="text-align: left">
                            <label for="password">Mật khẩu</label>
                            <input type="password" required class="form-control @error('password') is-invalid @enderror" value="{{ old('password') }}" id="password" name="password" autocomplete="">
                            @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>
                        <div class="form-group" style="text-align: left">
                            <label for="password_confirmation">Xác nhận mật khẩu</label>
                            <input type="password" required class="form-control @error('password_confirmation') is-invalid @enderror" value="{{ old('password_confirmation') }}" name="password_confirmation" id="password_confirmation" autocomplete="">
                                @error('password_confirmation')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>
                        <div class="form-group" style="text-align: left">
                            <label for="phone">Số điện thoại</label>
                            <input type="text" required class="form-control @error('phone') is-invalid @enderror" id="phone" value="{{ old('phone') }}" name="phone" autocomplete="">
                                @error('phone')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>
                        <div class="form-group" style="text-align: left">
                            <label for="address">Địa chỉ</label>
                            <input type="text" required class="form-control @error('address') is-invalid @enderror" id="address" value="{{ old('address') }}" name="address" autocomplete="">
                                @error('address')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>
                        <div class="form-group" style="text-align: left">
                            <label for="participants">Đối tượng tham gia</label>
                            <select class="form-control @error('participants') is-invalid @enderror" id="participants" name="participants" autocomplete="" required style="height: calc(2.25rem + 10px);">
                                <option value="1" @if(old('participants') == 1) selected @endif>Nhân viên Đại lý</option>
                                <option value="2" @if(old('participants') == 2) selected @endif>Nhân viên NPP</option>
                                <option value="3" @if(old('participants') == 3) selected @endif>Nhân viên PG/PB</option>
                            </select>
                            <!-- <input type="text" required class="form-control @error('participants') is-invalid @enderror" id="participants" value="{{ old('participants') }}" name="participants" autocomplete=""> -->
                                @error('participants')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>
                        <div class="form-group" style="text-align: left">
                            <label for="place_work">Nơi làm việc</label>
                            <input type="text" required class="form-control @error('place_work') is-invalid @enderror" id="place_work" value="{{ old('place_work') }}" name="place_work" autocomplete="">
                                 @error('place_work')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>
                        <div class="form-group">
                            <input class="form-check-input @error('agree') is-invalid @enderror" type="checkbox" name="agree" value="1" @if(old('agree') == 1) checked @endif id="agree" style="position: relative; width: 6%">
                            <label class="form-check-label" for="gridCheck">
                                <a class="show-box-policy" onclick="myFunction()" style="color: #009fe3;">Vui lòng đọc và đồng ý điều khoản trước khi đăng ký.</a>
                            </label>
                            @error('agree')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-group policy-show-hidden" id="policy_show"style="">
                        <p><strong>“At Dell, Your right to privacy and security is a major concern”</strong></p>
                        <p><strong>This Privacy and Data Security Statement explains how we respect and protect your personal information.</strong></p>
                        <p><strong>Your consent</strong></p>
                        <p>I understand that my personal information will be collected and processed for the purposes and activities as provided in the Privacy and Data Security Statement. I have read, understood and hereby grant my explicit consent and agree to authorize Dell, its affiliates or third parties to collect, process, use and/or transfer my personal information to other country outside Vietnam. If I change my mind about my preferences above, including withdrawing my consent to any of such items, I can let you know by using the contact details in the “Contact Dell”.</p>
                        <p><strong>Dell’s Privacy Notice</strong></p>
                        <p>Across Dell respects your privacy. Across our business, around the world, we will collect, store and use your personal information for defined purposes. We use your information to support and enhance our relationship with you, for example, to process your purchase, provide service and support, and share product, service and company news and offerings with you. We do not sell your personal information, but we may share your IP address with advertisers on Dell sites. We share your data only with partners who share Dell's commitment to protecting your privacy and data. Please contact Dell if you have privacy questions or concerns. You also may ask to see the personal data you have given us and request amendment, correction or deletion. We strive to protect the security of your personal data by use of appropriate measures and processes.</p>
                        <p>The lucky draw redemption cannot be completed without your data. To learn more about how Dell uses and protects your personal data, click here: <a href="https://www.dell.com/learn/th/en/thcorp1/policies-privacy"><u>Privacy Statement.</u></a></p>
                        <p>By completing your registration, you have read our <a href="https://www.dell.com/learn/th/en/thcorp1/policies-privacy"><u>Privacy Statement</u></a>, understood your rights, and how Dell uses and protects your data.</p>
                        <p><strong>Contact Dell</strong></p>
                        <p>Where If you would like to contact us, or have questions regarding our privacy statement, please write to us at:</p>
                        <p>Dell Vietnam Company Limited.</p>
                        <p>6th Floor, mPlaza Saigon </br> 39 Le Duan Street, District 1,</p>
                        <p>Ho Chi Minh City, Viet Nam</p>
                        <p>Alternatively, you may e-mail us at <a href="mailto:privacy@dell.com"><u>privacy@dell.com</u></a></p>
                        <br/>
                        <p>Tôi đồng ý với điều khoản và điều kiện của chương trình!</p>
                        <br/>
                        <p>Tôi tự nguyện cung cấp thông tin cho Dell với mục đích tham gia chương trình.</p>
                    </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>

      <script>
          function myFunction() {
            var element = document.getElementById("policy_show");
            element.classList.remove("policy-show-hidden");
            }
      </script>
</body>
</html>




