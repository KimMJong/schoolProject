<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Listener_BBSDAO"%>
<%@ page import="bbs.Listener_BBS"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="이미지주소.ico" rel="shortcut icon" type="image/x-icon" />
<title>HIP-UP 리스너 게시판</title>
<link rel="stylesheet" href="css/listener.css">
<link rel="favicon" href="./favicon.ico" />
<!-- 사용자들이 못보는 정보 -->
</head>
<body>

	<%
	//세션관리
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	int pageNumber = 1;
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	%>
	<header>
		<ul>

			<%
			if (userID == null) {
			%>
			<!-- 로고이미지 -->
			<a class="link" href="main.jsp"> <img src="assets/logo.PNG" /> <!-- width="숫자" height="숫자"-->
			</a>
			<a href="login.jsp">
				<div style='width: 50px; margin: 10px; float: right;'
					id="login_btn_group">
					<button id="login_btn">LOGIN</button>
				</div>
			</a>
			<%
			} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
						<li><a href="profil.jsp">프로필</a></li>
						<li><a href="withdrawal.jsp">회원탈퇴</a></li>
					</ul></li>
			</ul>
			<%
			}
			%>
		</ul>
	</header>
	<nav>
		<ul>
			<li><a class="active" href="main.jsp">홈</a></li>
			<li><a href="listener_bbs.jsp">리스너</a></li>
			<li><a href="index.jsp">가창자</a></li>
			<li><a href="index.jsp">작곡가</a></li>
			<li><a href="index.jsp">엔지니어</a></li>
			<li><a href="index.jsp">홍보게시판</a></li>
			<li><a href="index.jsp">장터</a></li>
		</ul>
	</nav>
	<!---게시글 목록  -->
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<!-- tr은 하나의 행 -->
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
						<th style="background-color: #eeeeee; text-align: center;">좋아요</th>
					</tr>
				</thead>
				<tbody>
					<%
					Listener_BBSDAO bbsDAO = new Listener_BBSDAO();
					ArrayList<Listener_BBS> list = bbsDAO.getList(pageNumber);
					for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%=list.get(i).getBbsID()%></td>
						<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle()%></td>
						<td><%=list.get(i).getUserID()%></td>
						<td><%=list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13)
						+ "시" + list.get(i).getBbsDate().substring(14, 16) + "분"%></td>
						<td><%=list.get(i).getUserPoint()%></td>
					</tr>
					<%
					}
					%>

				</tbody>
			</table>
			<!-- 페이징 하는 부분 -->
			<%
			if (pageNumber != 1) {
			%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>"
				class="btn btn-success btn-arrow-left">이전</a>
			<%
			}
			if (bbsDAO.nextPage(pageNumber + 1)) {
			%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>"
				class="btn btn-success btn-arrow-left">다음</a>
			<%
			}
			%>

			<a href="write.jsp" class="btb btn-primary pull-right">글쓰기</a>
		</div>

	</div>
	<script src="https://code.jquery.com-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>