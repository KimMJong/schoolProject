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
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>HIP-UP</title>
</head>
<body>
		
	<%
		//세션관리
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
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
			<table class="table table-striped" style="text-align : center; border:1px solid #dddddd">
				<thead>
					<!-- tr은 하나의 행 -->
					<tr>
						<th colspan="3" style="background-color: #eeeeee; text-align: center;">글 보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2"><%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
					<tr>
						<td >작성자</td>
						<td colspan="2"><%= bbs.getUserID() %></td>
					</tr>
					<tr>
						<td>작성 날짜</td>
						<td colspan="2" style="height:100px;"><%= bbs.getBbsDate().substring(0,11)+ bbs.getBbsDate().substring(11,13)+"시"+bbs.getBbsDate().substring(14,16)+"분" %></td>
					</tr>
					<tr>
						<td>작성 내용</td>
						<td colspan="2" style="height: 450px; text-align: left;"><%= bbs.getBbsContent() %></td>
					</tr>
					<tr>
						<td>좋아요</td>
						<td colspan="2"><%= bbs.getLike_count() %></td>
					</tr>
				</tbody>
			</table>
			<a href="listener_bbs.jsp" class="btn btn-primary">되돌아가기</a>
			<%
				if(userID != null && userID.equals(bbs.getUserID())){
					%>
					<a href="update.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">수정</a>
					<a onclick="return confirm('정말로 삭제하시겠습니가?')" href="deleteAction.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">삭제</a>
					<%
				}
			%>
		</div>
	</div>
	
	
    <script src="https://code.jquery.com-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>