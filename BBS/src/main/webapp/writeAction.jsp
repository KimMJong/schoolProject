<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.Listener_BBSDAO" %>
<%@ page import="user.User" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bbs" class = "bbs.Listener_BBS" scope ="page"/>
<jsp:setProperty name="bbs" property ="bbsTitle"/>
<jsp:setProperty name="bbs" property ="bbsContent"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HIP-UP</title>
</head>
<body>
	<%
		String userID  = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		//로그인이 안되어있을때
		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("history.back()");
			script.println("</script>");
		}else{
			//bbs에 제목이나 글이 없다면
			if(bbs.getBbsTitle() == null || bbs.getBbsContent() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안된 항목이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}else{
				//제대로 내용이 들어 있을 때
				Listener_BBSDAO bbsDAO = new Listener_BBSDAO();
				User user = new User();
				int result = bbsDAO.write(bbs.getBbsTitle(),userID, bbs.getBbsContent());
				if(result == -1 ){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패했습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}else {
					
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('성공적으로 작성 되었습니다.')");
					script.println("location.href = 'listener_bbs.jsp'");
					script.println("</script>");
				}
			}
		}
	%>
</body>
</html>