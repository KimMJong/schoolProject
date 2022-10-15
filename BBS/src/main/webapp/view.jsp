<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Listener_BBS"%>
<%@ page import="bbs.Listener_BBSDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/view.css">
<title>HIP-UP</title>
</head>
<body>

	<%
	//세션관리
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	int bbsID = 0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href = 'listener_bbs.jsp'");
		script.println("history.back()");
		script.println("</script>");
	}
	Listener_BBS bbs = new Listener_BBSDAO().getBbs(bbsID);
	%>
	<!-- 헤더부분 -->
	<div class="head1">
		<header class="header">
			<a class="navbar-brand" href="main.jsp">HIP-UP</a>
		</header>
		<nav class="navbar-default">
			<div class="navbar-collapse" id="bs-example-navbar-collapse-1"
				aria-expanded="false">
				<ul class="navbar-nav">
					<li><a href="main.jsp">HOME</a></li>
					<li><a href="listener_bbs.jsp">LISTENER</a></li>
					<li><a href="composer_bbs.jsp">COMPOSER</a></li>
					<li><a href="engineer_bbs.jsp">ENGINEER</a></li>
					<li><a href="ppl_bbs.jsp">PROMOTION</a></li>
					<li><a href="market_bbs.jsp">MARKET</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<div class="board_wrap">
		<div class="board_title">
			<strong>게시글</strong>
		</div>
		<div class="board_view_wrap">
			<div class="board_view">
				<div class="title"><%=bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n",
		"<br>")%></div>
				<div class="info">
					<dl>
						<dt>분류</dt>
						<dd>리스너</dd>
					</dl>
					<dl>
						<dt>작성자</dt>
						<dd><%=bbs.getUserID()%></dd>
					</dl>
					<dl>
						<dt>작성일</dt>
						<dd><%=bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시"
		+ bbs.getBbsDate().substring(14, 16) + "분"%></dd>
					</dl>
					<dl>
						<dt>조회수</dt>
						<dd>100</dd>
					</dl>
					<dl>
						<dt>추천</dt>
						<dd><%=bbs.getUserPoint()%></dd>
					</dl>
				</div>
				<br class="cont">
				<%=bbs.getBbsContent()%>
			</div>

			<div class="bt_wrap">
				<a href="#" class="on">추천</a>
				<%
					if (userID != null && userID.equals(bbs.getUserID())) {
				%>
				<a href="update.jsp?bbsID=<%=bbsID %>" class="re">수정</a> 
				<a onclick="return confirm('정말로 삭제하시겠습니가?')"
					href="deleteAction.jsp?bbsID=<%=bbsID%>">삭제</a>
				<%
					}
				%>
			</div>
		</div>
	</div>
</body>
</html>