<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>JSP 게시판 사이트</title>
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="navbar-header">
             <button type="button" class="navbar-toggle collapsed"
             data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
             aria-expanded="false">
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
             </button>
             <a class="navbar-brand" href="main.jsp">HIP-UP</a>
        </div>
       <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"
       				aria-expanded="false">
           <ul class="nav navbar-nav">
                <li class="active"><a href="main.jsp">홈</a></li>
                <li><a href="listener_bbs.jsp">리스너</a></li>
                <li><a href="composer_bbs.jsp">작곡가</a></li>
                <li><a href="engineer_bbs.jsp">엔지니어</a></li>
                <li><a href="ppl_bbs.jsp">홍보게시판</a></li>
                <li><a href="market_bbs.jsp">장터게시판</a></li>
           </ul>
           <ul class="nav navbar-nav navbar-right">
         <li class="dropdown">
           <a href="#" class="dropdown-toggle" 
            data-toggle="dropdown" role="button" aria-haspopup="true" 
            aria-expanded="false">접속하기 <span class="caret"></span></a>
        <ul class="dropdown-menu">
              <li class="active"><a href="login.jsp">로그인</a></li>
              <li><a href="join.jsp">회원가입</a></li>
            </ul>    
         </li>
       </ul>
       </div>
	</nav>
        <div class="container">
           <div class="col-Lg-4"></div>
           <div class="col-Lg-4"></div>          
              <div class="jumbotron" style="padding-top: 20px;">
               	<form method="post" action="joinAction.jsp">
                <h3 style="text-align: center;">회원가입 화면</h3>
               	<div class="form-group">
               	 	<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
                </div>
                <div class="form-group">
                	<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
                </div>
                <div class="form-group">
                	<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
                </div>
                <div class="form-group" style="text-align: center;">
				       <div class="btn-group" data-toggle="buttons">
				        <label class="btn btn-primary">
				         <input type="radio" name="userGender" autocomplete="off" value="남자">남자
				        </label>
				        <label class="btn btn-primary">
				         <input type="radio" name="userGender" autocomplete="off" value="여자">여자
				        </label>
				       </div>       
				 </div>
				 <div class="form-group" style="text-align: center;">
				       <div class="btn-group" data-toggle="buttons">
				        <label class="btn btn-primary">
				         <input type="radio" name="userType" autocomplete="off" value="리스너">리스너
				        </label>
				        <label class="btn btn-primary">
				         <input type="radio" name="userType" autocomplete="off" value="작곡가">작곡가
				        </label>
				        <label class="btn btn-primary">
				         <input type="radio" name="userType" autocomplete="off" value="엔지니어">엔지니어
				        </label>
				        <label class="btn btn-primary">
				         <input type="radio" name="userType" autocomplete="off" value="가창자">가창자
				        </label>
				       </div>       
				  </div>
				  <div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="50">
					</div>
                   <input type="submit" class="btn btn-primary form-control" value="회원가입">
                </form>
              </div>               
          </div>       
   <div class="col-Lg-4"></div>
     <script src="https://code.jquery.com-3.1.1.min.js"></script>
     <script src="js/bootstrap.min.js"></script>
</body>
</html>