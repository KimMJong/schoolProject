<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Listener_BBSDAO" %>
<%@ page import="bbs.Listener_BBS" %>
<%@ page import="java.util.ArrayList" %>
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
<style type="text/css">
	a, a:hover{
		color: #000000;
		text-decoration: none;
	
	}

</style>
</head>
<body>
		
	<%
		//세션관리
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1;
		if(request.getParameter("pageNumber")!= null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
             			<li><a href="profil.jsp">프로필</a></li>
             			<li><a href="withdrawal.jsp">회원탈퇴</a></li>
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
						for(int i=0 ; i<list.size();i++){
					%>
							<tr>
							<td><%= list.get(i).getBbsID() %></td>
							<td><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle() %></td>
							<td><%= list.get(i).getUserID() %></td>
							<td><%= list.get(i).getBbsDate().substring(0,11)+ list.get(i).getBbsDate().substring(11,13)+"시"+list.get(i).getBbsDate().substring(14,16)+"분" %></td>
							<td><%= list.get(i).getUserPoint() %></td>
							</tr>
					<%
						}
					
					%>
				
				</tbody>
			</table>
			<%
				if (pageNumber != 1) {
			%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arrow-left">이전</a>
			<%
				} if (bbsDAO.nextPage(pageNumber + 1)) {
			%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arrow-left">다음</a>
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