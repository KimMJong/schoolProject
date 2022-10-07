<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/write.css">
<title>HIP-UP</title>
</head>
<body>
		
	<%
		//세션관리
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%> 
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
       <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
           <ul class="nav navbar-nav">
                <li><a href="main.jsp">홈</a></li>
                <li class="active"><a href="listener_bbs.jsp">리스너</a></li>
                <li><a href="composer_bbs.jsp">작곡가</a></li>
                <li><a href="engineer_bbs.jsp">엔지니어</a></li>
                <li><a href="ppl_bbs.jsp">홍보게시판</a></li>
                <li><a href="market_bbs.jsp">장터게시판</a></li>
           </ul>
           <%
           		if(userID == null){
           	%>
     			  <ul class="nav navbar-nav navbar-right">
         			<li class="dropdown">
          			 <a href="#" class="dropdown-toggle" 
           			 data-toggle="dropdown" role="button" aria-haspopup="true" 
           			 aria-expanded="false">접속하기 <span class="caret"></span></a>
        			<ul class="dropdown-menu">
             		<li><a href="login.jsp">로그인</a></li>
             		<li><a href="join.jsp">회원가입</a></li>
            		</ul>    
       			  </li>
     			  </ul>
           	<%
           		}else{ 
           		%>
					<ul class="nav navbar-nav navbar-right">
         				<li class="dropdown">
          				 <a href="#" class="dropdown-toggle" 
           				 data-toggle="dropdown" role="button" aria-haspopup="true" 
           				 aria-expanded="false">회원관리 <span class="caret"></span></a>
        				<ul class="dropdown-menu">
             			<li><a href="logoutAction.jsp">로그아웃</a></li>
            			</ul>    
       			 		</li>
     			 	</ul>
           		<%
           		}
           %>
       </div>
	</nav>
	<div class ="container">
		<div class="row">
		<form method="post" action="writeAction.jsp">
			<table class="table table-striped" style="text-align : center; border:1px solid #dddddd">
				<thead>
					<!-- tr은 하나의 행 -->
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align: center;">글쓰기 양식</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class = "form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"> </td>
					</tr>
					<tr>
						<td><textarea class = "form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height:350px;"></textarea> </td>
					</tr>
				</tbody>
			</table>
			<input type="submit" class="btb btn-primary pull-right" value="글쓰기">
		</form>
		</div>
	
	</div>
	
	
    <script src="https://code.jquery.com-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>