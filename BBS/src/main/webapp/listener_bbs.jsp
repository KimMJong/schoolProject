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
<link rel="stylesheet" href="css/listener_2.css">
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
		<a href="main.jsp"> <img src="assets/logo.PNG" />
		</a>
		<%
		if (userID == null) {
		%>
		<!-- 로고이미지 -->
		<a href="login.jsp">
			<div style='width: 50px; margin: 10px; float: right;'
				id="login_btn_group">
				<button id="login_btn">LOGIN</button>
			</div>
		</a>
		<%
		} else {
		%>
		<div
			style='width: 190px; height =100px; margin-right: 10px; float: right;'
			id="login_btn_group">
			<a href="profil.jsp"><button id="login_btn">MY PAGE</button></a> <a
				href="logoutAction.jsp"><button id="login_btn">LOGOUT</button></a>
		</div>
		<%
		}
		%>

	</header>
	<nav>
		<ul>
			<li><a href="main.jsp">홈</a></li>
			<li><a class="active" href="listener_bbs.jsp">리스너</a></li>
			<li><a href="index.jsp">가창자</a></li>
			<li><a href="index.jsp">작곡가</a></li>
			<li><a href="index.jsp">엔지니어</a></li>
			<li><a href="index.jsp">홍보게시판</a></li>
			<li><a href="index.jsp">장터</a></li>
		</ul>
	</nav>
	<!---게시글 목록  -->
	<div class="board_all_wrap">
	<div class="board_title">리스너 게시판</div>
			<div class="board_list_wrap">
					<%
					Listener_BBSDAO bbsDAO = new Listener_BBSDAO();
					ArrayList<Listener_BBS> list = bbsDAO.getList(pageNumber);
					for (int i = 0; i < list.size(); i++) {
					%>
					<div class="item_wrap">
						<a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>">
							<div class="item">
								<img src="./assets/mainimg.jpg" class="sumimg">
								<div class="recommend"><%=list.get(i).getUserPoint()%></div>
								<div class="title_con">
									<div class="tit_con">
										<div class="title"><%=list.get(i).getBbsTitle()%></div>
										<div class="comment">[//보류//]</div>
									</div>
									<div class="date_writer_con">
										<div class="date"><%=list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시"
		+ list.get(i).getBbsDate().substring(14, 16) + "분"%></div>
										<div class="writer"><%=list.get(i).getUserID()%></div>
									</div>
								</div>
							</div>
						</a>
					</div>
						<%
						}
						%>
			<!-- 검색하는 부분 -->
			<div class="list_search_con">
				<select id="selSearchOption">
					<option value="T">제목</option>
					<option value="W">작성자</option>
				</select> <input id="txtKeyWord" /> <input type="button" value="검색" /> <a
					href="write.jsp"> <input id="write_btn" type="button"
					value="글쓰기" /></a>
			</div>
			<!-- 페이징 하는 부분 -->
			<div class="paging">
			<%
			if (pageNumber != 1) {
			%>
			<a href="listener_bbs.jsp?pageNumber=<%=pageNumber - 1%>"
				class="btn btn-success btn-arrow-left">이전</a>
			<%
			}
			if (bbsDAO.nextPage(pageNumber + 1)) {
			%>
			<a href="listener_bbs.jsp?pageNumber=<%=pageNumber + 1%>"
				class="btn btn-success btn-arrow-left">다음</a>
			<%
			}
			%>
			</div>
		</div>
	</div>
</body>
</html>