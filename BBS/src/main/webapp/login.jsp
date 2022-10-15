<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="이미지주소.ico" rel="shortcut icon" type="image/x-icon" />
    <title>HIP-UP LOGIN</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="favicon" href="./favicon.ico" />
    <!-- 사용자들이 못보는 정보 -->
</head>

<body>
    <div class="junk">
        <div class=login_main>
            <div class="login_con">
                <div style="text-align:center">
                    <a href="main.jsp">
                        <img id="login_logo" src="./assets/mainlogo.PNG" /></a>
                </div>
                <div id="login_text">LOGIN</div>
                <div id="facebook_login">
                    <a href="https://naver.com" target="_blank">
                        <img src="./assets/facebook_login.png" width="496px" height="60px">
                    </a>
                </div>

                <div id="google_login">
                    <a href="https://naver.com">
                        <img src="./assets/google_login.png" width="496px" height="60px" />
                        <!-- width="숫자" height="숫자"-->
                    </a>
                </div>

                <div class="login-form">
                    <form method="post" action ="loginAction.jsp">
                        <input type="text" name="userID" class="text-field" placeholder="아이디">
                        <input type="password" name="userPassword" class="text-field" placeholder="비밀번호">
                        <input type="submit" value="로그인" class="submit-btn">
                </div>
                </form>
                <div class="links">
                    <a href="join.jsp">HIP-UP이 처음이신가요?</a>
                </div>
                <div class="links2">
                    <a href="#">비밀번호를 잊어버리셨나요?</a>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>

</html>
