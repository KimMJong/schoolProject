<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Listener_BBS" %>
<%@ page import="bbs.Listener_BBSDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/update.css">
<title>HIP-UP</title>
</head>
<body>
		
	<%
		//세션관리
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		if (userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인이 되지 않았습니다.')");
			script.println("location.href = 'login.jsp'");
			script.println("history.back()");
			script.println("</script>");
		}
		int bbsID = 0;
		if(request.getParameter("bbsID") != null){
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if(bbsID == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href = 'listener_bbs.jsp'");
			script.println("history.back()");
			script.println("</script>");
		}
		Listener_BBS bbs = new Listener_BBSDAO().getBbs(bbsID);
		//게시판의 유저id와 지금 유저id가 일치하지 않을경우
		if(!userID.equals(bbs.getUserID())){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글을 수정할 권한이 없습니다.')");
			script.println("location.href = 'listener_bbs.jsp'");
			script.println("history.back()");
			script.println("</script>");
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
       </div>
	</nav>
	<div class="board_wrap">
		<div class="board_title">
			<strong>게시글 작성</strong>
		</div>
		<form method="post" action="updateAction.jsp?bbsID=<%=bbsID%>">
		<div class="board_write_wrap">
			<div class="board_write">
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dd>
							<input type="text" placeholder="제목 입력" name="bbsTitle" maxlength="50"/>
						</dd>
					</dl>
				</div>
				<div class="info">
					<dl>
				</div>
				<div class="cont">
					<textarea placeholder="내용 입력" name="bbsContent" maxlength="2048" style="height: 350px;"></textarea>
				</div>
			</div>
			<div class="bt_wrap">
				<button type="submit" value="글쓰기"><a class="on">등록</a> <a href="listener_bbs.jsp">취소</a></button>
			</div>
		</div>
		</form>
	</div>
	
	
    <script src="https://code.jquery.com-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>